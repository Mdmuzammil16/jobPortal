import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:butter_fly/view_models/auth_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../request_models/auth_request_model.dart';
import '../responce_models/auth_response_model.dart';
import '../utils/app_style.dart';
import '../utils/custom_colors.dart';

class UpdateProfilePage extends StatefulWidget {
  final UserDataModel? userDataModel;
  const UpdateProfilePage({super.key, required this.userDataModel});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  final TextEditingController nameEditTextController = TextEditingController();
  final TextEditingController emailEditTextController = TextEditingController();
  final TextEditingController mobileEditTextController = TextEditingController();

  final authViewModel = Get.put(AuthViewModel());
  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){
        nameEditTextController.text = widget.userDataModel?.name ?? "";
        emailEditTextController.text = widget.userDataModel?.email ?? "";
        mobileEditTextController.text = widget.userDataModel?.mobileNumber ?? "";
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body:
          SafeArea(top: true,
              child:
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: CustomColors.primary,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            GestureDetector(onTap: (){
                              Get.back();
                            },child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,color: Colors.white,)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                  style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),"Profile"
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(child: Container(height: 100,width: 100,color:CustomColors.gray,child: Center(child: Image.asset("assets/images/profile.png",height: 50,width: 50)))),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                  style: TextStyle(color: CustomColors.textColor,fontSize: 12,fontWeight: FontWeight.w600),"Name"
                              ),
                            ),
                            Container(decoration: AppStyles.grayBox,child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                controller: nameEditTextController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Name',
                                  counterText: "",  // Removes the character count indicator
                                ),
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                  style: TextStyle(color: CustomColors.textColor,fontSize: 12,fontWeight: FontWeight.w600),"Email Address"
                              ),
                            ),
                            Container(decoration: AppStyles.grayBox,child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                controller: emailEditTextController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email Address',
                                  counterText: "",  // Removes the character count indicator
                                ),
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                  style: TextStyle(color: CustomColors.textColor,fontSize: 12,fontWeight: FontWeight.w600),"Mobile Number"
                              ),
                            ),
                            Container(decoration: AppStyles.grayBox,child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                controller: mobileEditTextController,
                                keyboardType: TextInputType.phone,
                                maxLength: 10,  // Set max length to 10 digits for a mobile number
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Mobile Number",
                                  counterText: "",  // Removes the character count indicator
                                ),
                              ),
                            )),
                            const SizedBox(height: 20),
                            Obx(() => authViewModel.updateProfileObserver.value.maybeWhen(
                                loading: (loading) => Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 50,width: 50,child: Center(child: SizedBox(height: 30,width: 30,child: CircularProgressIndicator(color: CustomColors.primary,)))),
                                  ],
                                ),
                                orElse: (){
                                  return GestureDetector(
                                      onTap: (){
                                    if(nameEditTextController.text.trim().isNotEmpty && emailEditTextController.text.trim().isNotEmpty && mobileEditTextController.text.trim().isNotEmpty && mobileEditTextController.text.trim().length == 10){
                                      authViewModel.performUpdateProfile(RegisterUserRequestModel(name: nameEditTextController.text.toString(), email: emailEditTextController.text.toString(), mobileNumber: mobileEditTextController.text.toString()));
                                    }
                                    else  if(mobileEditTextController.text.trim().isEmpty || mobileEditTextController.text.trim().length != 10){
                                      Get.snackbar("Value Error", "Check Your Mobile Number");
                                    }
                                    else if(nameEditTextController.text.trim().isEmpty){
                                      Get.snackbar("Value Error", "Check Your Name");
                                    }
                                    else{
                                      Get.snackbar("Value Error", "Check Your EmailId");
                                    }
                                  },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'Update',textAlign: TextAlign.center,)),));
                                })
                            )
                          ])
                      ),
                    ),
                  ],
                ),
              )
          )
      ),
    );
  }
}

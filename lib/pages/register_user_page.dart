import 'package:butter_fly/pages/change_password_page.dart';
import 'package:butter_fly/request_models/auth_request_model.dart';
import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:butter_fly/view_models/auth_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_style.dart';
import '../utils/custom_colors.dart';
import 'forgot_password_page.dart';

class RegisterUserPage extends StatefulWidget {
  final String mobileNumber;
  const RegisterUserPage({super.key, required this.mobileNumber});

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  final authViewModel = Get.put(AuthViewModel());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){
        mobileController.text = widget.mobileNumber;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body:
          SafeArea(top: true,
              child:
              Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(onTap: (){
                        Get.back();
                      },child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20)),
                      const SizedBox(height: 20),
                      Center(child: Image.asset("assets/images/app_logo_1.png",height: 150,width: 150)),
                      Text(
                          style: TextStyle(color: CustomColors.secondary,fontSize: 24,fontWeight: FontWeight.w700),"Register"
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                            style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w600),"Create your account to associate with "
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            height: 50,
                            decoration: AppStyles.grayBox,child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset("assets/images/profile_outlined.png",height: 15,width: 15),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: nameController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your Name',
                                    counterText: "",  // Removes the character count indicator
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical:10),
                        child: Container(
                            height: 50,
                            decoration: AppStyles.grayBox,child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset("assets/images/email.png",height: 15,width: 15),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your Email ID',
                                    counterText: "",  // Removes the character count indicator
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            height: 50,
                            decoration: AppStyles.grayBox,child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset("assets/images/phone.png",height: 15,width: 15),
                              ),
                              Expanded(
                                child: TextFormField(
                                  enabled: false,
                                  controller: mobileController,
                                  keyboardType: TextInputType.phone,
                                  maxLength: 10,  // Set max length to 10 digits for a mobile number
                                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your Mobile Number',
                                    counterText: "",  // Removes the character count indicator
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ),
                      const SizedBox(height: 20),
                      Obx(() => authViewModel.registerUserObserver.value.maybeWhen(
                        loading: (loading) => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 50,width: 50,child: Center(child: SizedBox(height: 30,width: 30,child: CircularProgressIndicator(color: CustomColors.primary,)))),
                            ],
                          ),
                          orElse: (){
                          return GestureDetector(onTap: (){
                            if(nameController.text.trim().isNotEmpty && emailController.text.trim().isNotEmpty && emailController.text.toString().contains("@gmail.com") && mobileController.text.trim().isNotEmpty && mobileController.text.trim().length == 10){
                              authViewModel.performRegisterUser(RegisterUserRequestModel(name: nameController.text.toString(), email: emailController.text.toString(), mobileNumber: mobileController.text.toString()));
                            }
                            else if(mobileController.text.toString().trim().isEmpty || mobileController.text.toString().trim().length != 10){
                              Get.snackbar("Value Error", "Check Your Mobile Number");
                            }
                            else if(nameController.text.trim().isEmpty){
                              Get.snackbar("Value Error", "Check Your Name");
                            }
                            else if(!emailController.text.toString().contains("@gmail.com")){
                              Get.snackbar("Value Error", "Check Your EmailId");
                            }
                          },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'REGISTER',textAlign: TextAlign.center,)),));
                      })
                      ),
                    ],
                  ),
                ),
              )
          )
      ),
    );
  }
}


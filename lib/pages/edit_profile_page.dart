import 'package:butter_fly/components/second_heading_component.dart';
import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../request_models/auth_request_model.dart';
import '../responce_models/auth_response_model.dart';
import '../utils/app_style.dart';
import '../utils/custom_colors.dart';
import '../view_models/auth_view_model.dart';

class EditProfile extends StatefulWidget {
  final UserDataModel? userDataModel;
  const EditProfile({super.key,required this.userDataModel});



  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  final TextEditingController nameEditTextController = TextEditingController();
  final TextEditingController emailEditTextController = TextEditingController();
  final TextEditingController mobileEditTextController = TextEditingController();
  final TextEditingController addSkillsText = TextEditingController();
  RxList<String> skillsList = <String>[].obs;

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
                    SecondHeadingComponent(backPress: (){
                      Get.back();
                    },headingName: "Edit Profile"),
                    Container(
                      color: CustomColors.primary,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipOval(child: Container(height: 80,width: 80,color:CustomColors.gray,child: Center(child: Image.asset("assets/images/profile.png",height: 50,width: 50)))),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),widget.userDataModel?.name ?? ""
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),"Biryani Master"
                                  ),
                                ),
                                Text(
                                    style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),"Total Experience: 6 years"
                                ),
                              ],)
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
                            SizedBox(height: 20),
                            Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: CustomColors.primary), child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                   ClipOval(
                                     child: Container(width: 40,height: 40,color: Colors.white,child: Center(
                                       child: Text(
                                           style: TextStyle(color: CustomColors.textColor,fontSize: 14,fontWeight: FontWeight.w600),"12"
                                       ),
                                     ),),
                                   ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                          style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),"Saved Jobs"
                                      ),
                                    ),
                                    ClipOval(
                                      child: Container(width: 40,height:  40,color: Colors.white,child: Center(
                                        child: Text(
                                            style: TextStyle(color: CustomColors.textColor,fontSize: 14,fontWeight: FontWeight.w600),"12"
                                        ),
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                          style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),"Applied Jobs "
                                      ),
                                    )
                                  ]),
                            )),
                            SizedBox(height: 20),
                            Container(
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border:Border.all(color: CustomColors.darkGray,width: 1),color: CustomColors.gray), child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                 child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              style: TextStyle(color: CustomColors.primary,fontSize: 16,fontWeight: FontWeight.w800),"Skills"),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 5),
                                            child: Text(
                                                style: TextStyle(color: CustomColors.primary,fontSize: 12,fontWeight: FontWeight.w600),"Your current skills"
                                            ),
                                          ),
                                          Obx(()=>
                                             Wrap(
                                              spacing: 8,
                                              runSpacing: 8,
                                              children: skillsList.map((item) {
                                                return Container(
                                                    decoration: AppStyles.graySelectedBox,
                                                    child:
                                                    Padding(
                                                      padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                                      child: Text(style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        fontStyle: FontStyle.normal,
                                                      ),item ?? ""),
                                                    ));
                                              }).toList(),
                                            ),
                                          )
                                        ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5),
                                      child: Container(color: Colors.grey,width: 1,height: 50,),
                                    ),
                                    GestureDetector(onTap: (){
                                      addSkillsText.text = "";
                                      showModalBottomSheet(
                                        context: context,
                                        isScrollControlled: true, // Allows the bottom sheet to adjust for the keyboard
                                        builder: (context) {
                                          return IntrinsicHeight(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                top: 15,
                                                bottom: MediaQuery.of(context).viewInsets.bottom, // Adjust padding for keyboard
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min, // Ensures the bottom sheet takes only necessary space
                                                children: [
                                                  const SizedBox(height: 20),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                                    child: Container(
                                                      height: 50,
                                                      decoration: AppStyles.grayBox,
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                                        child: TextFormField(
                                                          controller: addSkillsText,
                                                          decoration: const InputDecoration(
                                                            border: InputBorder.none,
                                                            hintText: 'Enter your skill',
                                                            counterText: "",
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      skillsList.add(addSkillsText.text);
                                                      Get.back();
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 50,
                                                      decoration: AppStyles.primaryButtonStyle,
                                                      child: const Center(
                                                        child: Text(
                                                          'Add',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 22,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                      ;
                                    },child: Container(decoration: AppStyles.primaryButton,child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                      child: Text(style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),'Add Skills',textAlign: TextAlign.center,),
                                    ),)),
                                  ]),
                               )),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                  style: TextStyle(color: CustomColors.textColor,fontSize: 14,fontWeight: FontWeight.w600),"Name"
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
                                  style: TextStyle(color: CustomColors.textColor,fontSize: 14,fontWeight: FontWeight.w600),"Email Address"
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
                                  style: TextStyle(color: CustomColors.textColor,fontSize: 14,fontWeight: FontWeight.w600),"Mobile Number"
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
                                      },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'Submit Application',textAlign: TextAlign.center,)),));
                                })
                            )
                          ],
                        ),
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

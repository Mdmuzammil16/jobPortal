import 'package:butter_fly/pages/forgot_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_style.dart';
import '../utils/custom_colors.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    },child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,)),
                    const SizedBox(height: 20),
                    Center(child: Image.asset("assets/images/app_logo_1.png",height: 150,width: 150)),
                    Text(
                        style: TextStyle(color: CustomColors.secondary,fontSize: 24,fontWeight: FontWeight.w700),"Change Password"
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w600),"Create your New password"
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(height:50,decoration: AppStyles.grayBox,child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          maxLength: 10,  // Set max length to 10 digits for a mobile number
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Old Password',
                            counterText: "",  // Removes the character count indicator
                          ),
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Container(height:50,decoration: AppStyles.grayBox,child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          maxLength: 10,  // Set max length to 10 digits for a mobile number
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'New Password',
                            counterText: "",  // Removes the character count indicator
                          ),
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(height:50,decoration: AppStyles.grayBox,child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          maxLength: 10,  // Set max length to 10 digits for a mobile number
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                            counterText: "",  // Removes the character count indicator
                          ),
                        ),
                      )),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(onTap: (){
                      Get.to(() => const ForgotPasswordPage());
                    },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'REGISTER',textAlign: TextAlign.center,)),)),
                  ],
                ),
              ),
            )
        )
    );
  }
}

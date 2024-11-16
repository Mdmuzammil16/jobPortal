import 'package:butter_fly/pages/change_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_style.dart';
import '../utils/custom_colors.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                        style: TextStyle(color: CustomColors.secondary,fontSize: 24
                            ,fontWeight: FontWeight.w700),"Forgot Password?"
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w600),"Enter your valid email address below and we will send you email with instructions on how to change your password"
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical:20),
                      child: Container(height:50,decoration: AppStyles.grayBox,child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:10),
                              child: Image.asset("assets/images/email.png",height: 15,width: 15),
                            ),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                maxLength: 10,  // Set max length to 10 digits for a mobile number
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                    GestureDetector(onTap: (){
                      // Get.to(() => const ChangePasswordPage());
                    },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'REGISTER',textAlign: TextAlign.center,)),)),
                  ],
                ),
              ),
            )
        )
    );
  }
}

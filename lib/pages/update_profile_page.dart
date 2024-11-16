import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_style.dart';
import '../utils/custom_colors.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({super.key});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        SafeArea(top: true,
            child:
            Column(
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
                            keyboardType: TextInputType.phone,
                            maxLength: 10,  // Set max length to 10 digits for a mobile number
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                            keyboardType: TextInputType.phone,
                            maxLength: 10,  // Set max length to 10 digits for a mobile number
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                        GestureDetector(onTap: (){
                        },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),'Update',textAlign: TextAlign.center,)),)),
                      ],
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}

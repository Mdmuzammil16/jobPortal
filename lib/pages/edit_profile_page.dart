import 'package:butter_fly/components/second_heading_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_style.dart';
import '../utils/custom_colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        SafeArea(top: true,
            child:
            Column(
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
                                style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),"Marvin Mc Kinney"
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
                                    style: TextStyle(color: CustomColors.primary,fontSize: 16,fontWeight: FontWeight.w800),"Skills"), Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                      style: TextStyle(color: CustomColors.primary,fontSize: 12,fontWeight: FontWeight.w600),"Your current skills"
                                  ),)],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Container(color: Colors.grey,width: 1,height: 50,),
                                ),
                                GestureDetector(onTap: (){
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
                              style: TextStyle(color: CustomColors.textColor,fontSize: 14,fontWeight: FontWeight.w600),"Email Address"
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
                              style: TextStyle(color: CustomColors.textColor,fontSize: 14,fontWeight: FontWeight.w600),"Mobile Number"
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
                        },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),'Submit Application',textAlign: TextAlign.center,)),)),
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

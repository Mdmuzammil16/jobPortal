import 'package:butter_fly/components/delete_confirmation_bottom_sheet.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/app_style.dart';
import '../utils/custom_colors.dart';

class UploadResumePage extends StatefulWidget {
  const UploadResumePage({super.key});

  @override
  State<UploadResumePage> createState() => _UploadResumePageState();
}

class _UploadResumePageState extends State<UploadResumePage> {
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
                              style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w900),"Resume"
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),"New Resume"
                        ),
                        Text(
                            style: TextStyle(color: CustomColors.darkGray,fontSize: 14,fontWeight: FontWeight.w600),"Currently showing this only"
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          child: Container(decoration: AppStyles.grayBox,width: double.infinity,child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Image.asset("assets/images/pdf_image.png",width: 50,height: 50,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    style: TextStyle(color: CustomColors.primary,fontSize: 12,fontWeight: FontWeight.w600),"Mahesh Sriramula -  Updated resume"
                                ),
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                GestureDetector(onTap:(){
                                  showModalBottomSheet(context: context,
                                  builder: (context) {return const DeleteConfirmationBottomSheet();});
                                },child: Image.asset("assets/images/delete.png",width: 15,height: 15,color: CustomColors.secondary,)),
                              ],)
                            ],),
                          ),),
                        ),
                        Text(
                            style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),"Previous Resume"
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          child: DottedBorder(
                            color: CustomColors.darkGray, // border color
                            strokeWidth: 1,     // thickness of the dots
                            dashPattern: [6, 3], // length of the dash and space
                            borderType: BorderType.RRect, // shape of the border
                            radius: Radius.circular(12),
                            child: Container(decoration: AppStyles.grayBox
                              ,width: double.infinity,child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/pdf_image.png",width: 50,height: 50,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          style: TextStyle(color: CustomColors.primary,fontSize: 12,fontWeight: FontWeight.w600),"Mahesh Sriramula -  Updated resume"
                                      ),
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(onTap:(){
                                showModalBottomSheet(context: context,
                                builder: (context) {return const DeleteConfirmationBottomSheet();});
                                },child: Image.asset("assets/images/delete.png",width: 15,height: 15,color: CustomColors.secondary,)),
                                      ],)
                                  ],),
                              ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          child: DottedBorder(
                            color: CustomColors.darkGray, // border color
                            strokeWidth: 1,     // thickness of the dots
                            dashPattern: [6, 3], // length of the dash and space
                            borderType: BorderType.RRect, // shape of the border
                            radius: Radius.circular(12),
                            child: Container(decoration: AppStyles.grayBox
                              ,width: double.infinity,child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/pdf_image.png",width: 50,height: 50,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        style: TextStyle(color: CustomColors.primary,fontSize: 12,fontWeight: FontWeight.w600),"Mahesh Sriramula -  Updated resume"
                                    ),
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(onTap:() {
                                showModalBottomSheet(context: context,
                                builder: (context) {return const DeleteConfirmationBottomSheet();});
                                },child: Image.asset("assets/images/delete.png",width: 15,height: 15,color: CustomColors.secondary,)),
                                    ],)
                                ],),
                            ),),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(onTap: (){
                        },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),'Upload New',textAlign: TextAlign.center,)),)),
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

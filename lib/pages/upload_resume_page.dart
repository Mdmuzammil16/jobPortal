import 'package:butter_fly/components/delete_confirmation_bottom_sheet.dart';
import 'package:butter_fly/components/empty_data_view.dart';
import 'package:butter_fly/pages/job_details_entry_page.dart';
import 'package:butter_fly/pages/pdf_viewer_page.dart';
import 'package:butter_fly/responce_models/user_response_model.dart';
import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:butter_fly/view_models/user_view_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../responce_models/auth_response_model.dart';
import '../utils/app_style.dart';
import '../utils/custom_colors.dart';

class UploadResumePage extends StatefulWidget {
  final int userId;
  const UploadResumePage({super.key, required this.userId});

  @override
  State<UploadResumePage> createState() => _UploadResumePageState();
}

class _UploadResumePageState extends State<UploadResumePage> {
  final userViewModel = Get.put(UserViewModel());
  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){

      },
      onStart: (){
        userViewModel.performFetchResumes();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body:
          SafeArea(top: true,
              child:
              Column(
                children: [
                  Container(height:60,color: CustomColors.primary,child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(onTap:(){
                        Get.back();
                      },child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,color: Colors.white,),
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            ),"Resume"),
                      )
                    ],),),
                  Obx(() => userViewModel.fetchResumesObserver.value.maybeWhen(
                    loading: (loading) => Expanded(child: Center(child: SizedBox(width:40,height:40,child: CircularProgressIndicator(color: CustomColors.primary)),)),
                    success: (data) {
                      final responseData = (data as UserResumesResponseModel).data;
                      ResumeModel? firstResume;
                      if(responseData?.resumes?.length == 1){
                        firstResume =  responseData?.resumes?[0];
                      }
                      return Expanded(
                        child: responseData?.resumes?.isEmpty == true ? Center(child: EmptyDataView(text: "No Resumes Found \n \n Please Upload An New Resume")) : Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                    style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),"New Resume"
                                ),
                                Text(
                                    style: TextStyle(color: CustomColors.darkGray,fontSize: 14,fontWeight: FontWeight.w600),"Currently showing this only"
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                  child: GestureDetector(
                                    onTap: (){
                                      if(firstResume?.downloadUrl != null){
                                        Get.to(() => PdfViewerPage(url:firstResume?.downloadUrl));
                                      }
                                      else{
                                        Get.snackbar('Exception', "Upload An Resume", snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary, colorText: Colors.white);
                                      }
                                    },
                                    child: Container(decoration: AppStyles.grayBox,width: double.infinity,child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 20),
                                            Image.asset("assets/images/pdf_image.png",width: 50,height: 50,),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                                                  style: TextStyle(color: CustomColors.primary,fontSize: 12,fontWeight: FontWeight.w600),firstResume?.fileName ?? "Mahesh Sriramula -  Updated resume"
                                              ),
                                            ),
                                            Row(mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  GestureDetector(onTap:(){
                                                    if(firstResume?.downloadUrl != null){
                                                      if((responseData?.resumes?.length ?? 0) > 1){
                                                        showModalBottomSheet(context: context, builder: (context) {return  DeleteConfirmationBottomSheet(id:firstResume?.resumeId.toString() ?? "");});
                                                      }
                                                      else{
                                                        Get.snackbar('Exception', "AtLeast One Resume Should Present", snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary, colorText: Colors.white);
                                                      }
                                                    }
                                                    else{
                                                      Get.snackbar('Exception', "Upload An Resume", snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary, colorText: Colors.white);
                                                    }
                                                  },child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Image.asset("assets/images/delete.png",width: 15,height: 15,color: CustomColors.secondary,),
                                                  )),
                                                ])
                                          ]),
                                    )),
                                  ),
                                ),
                                Text(
                                    style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),"Previous Resume"
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount:responseData?.resumes?.length ?? 0,
                                itemBuilder: (BuildContext context, int index) {
                                  final resume =  responseData?.resumes?[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                    child: DottedBorder(
                                      color: CustomColors.darkGray, // border color
                                      strokeWidth: 1,     // thickness of the dots
                                      dashPattern: [6, 3], // length of the dash and space
                                      borderType: BorderType.RRect, // shape of the border
                                      radius: Radius.circular(12),
                                      child: GestureDetector(
                                        onTap: (){
                                          Get.to(() => PdfViewerPage(url:resume?.downloadUrl));
                                        },
                                        child: Container(decoration: AppStyles.grayBox
                                          ,width: double.infinity,child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 20),
                                                Image.asset("assets/images/pdf_image.png",width: 50,height: 50,),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                      style: TextStyle(color: CustomColors.primary,fontSize: 12,fontWeight: FontWeight.w600),resume?.fileName ?? ""
                                                  ),
                                                ),
                                                Row(mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    GestureDetector(onTap:(){
                                                      if((responseData?.resumes?.length ?? 0) > 1){
                                                        showModalBottomSheet(context: context, builder: (context) {return  DeleteConfirmationBottomSheet(id:resume?.resumeId.toString() ?? "");});
                                                      }
                                                      else{
                                                        Get.snackbar('Exception', "AtLeast One Resume Should Present", snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary, colorText: Colors.white);
                                                      }
                                                    },child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Obx(() => userViewModel.deleteResumeObserver.value.maybeWhen(loading: (loading) => (resume == loading) ? SizedBox(width: 20,height: 20,child: CircularProgressIndicator(),):Image.asset("assets/images/delete.png",width: 15,height: 15,color: CustomColors.secondary,),orElse: () => Image.asset("assets/images/delete.png",width: 15,height: 15,color: CustomColors.secondary,))),
                                                    )),
                                                  ],)
                                              ],),
                                          ),),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        ]),
                      );
                    }, orElse: () => Expanded(child: SizedBox())
                  )
                  ),
                    Padding(
                    padding: const EdgeInsets.all(15),
                    child: GestureDetector(onTap: (){
                    Get.to(() => JobDetailsEntryPage(userId: widget.userId, fromUploadResumePage: true,));
                    },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),'Upload New',textAlign: TextAlign.center,)),)),
                    )
                ],
              )
          )
      ),
    );
  }
}

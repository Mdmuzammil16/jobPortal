import 'dart:io';

import 'package:butter_fly/components/experience_data_component.dart';
import 'package:butter_fly/pages/main_page.dart';
import 'package:butter_fly/request_models/auth_request_model.dart';
import 'package:butter_fly/responce_models/auth_response_model.dart';
import 'package:butter_fly/utils/app_style.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils/file_picker_service.dart';
import '../view_models/auth_view_model.dart';

class JobDetailsEntryPage extends StatefulWidget {
  final int? userId;
  const JobDetailsEntryPage({super.key,required this.userId});

  @override
  State<JobDetailsEntryPage> createState() => _JobDetailsEntryPageState();
}

class _JobDetailsEntryPageState extends State<JobDetailsEntryPage> {
  final authViewModel = Get.put(AuthViewModel());
  FilePickerService filePickerService = FilePickerService();


  String? _selectedItem = '1 Year';
  final List<String> _items = ['1 Year', '2 Years', '3 Years', '4 Years'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        StatefulWrapper(
          onInit: (){
            authViewModel.performGetUserExperience();
          },
          child: SafeArea(top: true,
              child:
              Padding(
                padding: const EdgeInsets.all(20),
                child: Obx(() => authViewModel.getUserExperienceObserver.value.maybeWhen(
                  error: (error){
                    return const SizedBox(width: double.infinity,height: double.infinity,child: Center(child: Text("Something went wrong")));
                  },
                    loading: (data){ return SizedBox(height: double.infinity,width: double.infinity,child: Center(child: SizedBox(height: 30,width: 30,child: CircularProgressIndicator(color: CustomColors.primary,))));},
                    success: (userExperienceData){
                     final experienceData = (userExperienceData as GetUserExperienceResponse).data;
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(onTap: (){
                              Get.back();
                            },child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,)),
                            const SizedBox(height: 20),
                            Text(
                                style: TextStyle(color: CustomColors.secondary,fontSize: 24,fontWeight: FontWeight.w600),"I am a"
                            ),
                            const SizedBox(height: 20),
                            StaggeredGridView.countBuilder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              itemCount:experienceData?.length ?? 0,
                              itemBuilder:(BuildContext context, int index) {
                                final item = experienceData?[index];
                                return ExperienceDataComponent(data: item);},
                              mainAxisSpacing: 4.0,
                              crossAxisSpacing: 4.0,
                              staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(height: 50,width: double.infinity,decoration: AppStyles.grayBox,child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  hint: Text(style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w500),'Years of Experienced'),
                                  value: _selectedItem,
                                  items: _items.map((String item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w500),item),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      _selectedItem = newValue;
                                    });
                                  },
                                  underline: SizedBox.shrink(),
                                ),
                              ),),
                            ),
                            GestureDetector(
                              onTap: () async {
                                await filePickerService.pickPdfFile();
                              },
                              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:CustomColors.gray,border: Border.all(width: 1,color: CustomColors.primary)),width:
                              double.infinity,height: 50,child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                          style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w500),"Upload Document"
                                      ),
                                    ),
                                    Image.asset("assets/images/upload_document.png",height: 20,width: 20),
                                  ],
                                ),
                              ),),
                            ),
                            Obx(()=>
                               Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                    style: TextStyle(color: CustomColors.darkGray,fontSize: 12,fontWeight: FontWeight.w500),authViewModel.uploadResumeFile.value.path.toString() == "" ? "Upload PDF, JPG, Word Format only" : authViewModel.uploadResumeFile.value.path.split('/').last.toString()
                                ),
                              ),
                            ),
                            Obx(()=> authViewModel.uploadUserExperienceObserver.value.maybeWhen(
                                loading: (data){
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 50,width: 50,child: Center(child: SizedBox(height: 30,width: 30,child: CircularProgressIndicator(color: CustomColors.primary,)))),
                                    ],
                                  );
                                },
                                orElse: (){
                                  return GestureDetector(onTap: (){
                                    if(authViewModel.selectedOption.value == 0){
                                      Get.snackbar('Oops.','Select Your Work Experience', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
                                    }else if(authViewModel.uploadResumeFile.value == File('')){
                                    Get.snackbar('Oops.','Upload An Resume', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
                                  }else{
                                      authViewModel.performUploadUserExperience(UserWorkExperienceRequestModel(userId: widget.userId.toString(), userExperienceId:authViewModel.selectedOption.value.toString(), yearsOfExperienced: (_items.indexOf(_selectedItem??"1 Year") + 1).toString()),authViewModel.uploadResumeFile.value);
                                    }
                                    },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'CONTINUE',textAlign: TextAlign.center,)),));
                                }))
                          ],
                        ),
                      );
                    },
                    orElse: (){return SizedBox(height: double.infinity,width: double.infinity,child: Center(child: SizedBox(height: 30,width: 30,child: CircularProgressIndicator(color: CustomColors.primary,))));})
                ),
              )
          ),
        )
    );
  }
}

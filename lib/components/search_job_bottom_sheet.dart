import 'package:butter_fly/pages/job_search_page.dart';
import 'package:butter_fly/request_models/job_details_request_model.dart';
import 'package:butter_fly/responce_models/apply_job_details_response_model.dart';
import 'package:butter_fly/responce_models/job_details_response_model.dart';
import 'package:butter_fly/view_models/job_details_view_model.dart';
import 'package:cupertino_range_slider_improved/cupertino_range_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import '../utils/app_style.dart';
import '../utils/custom_colors.dart';

class SearchJobBottomSheet extends StatefulWidget {
  const SearchJobBottomSheet({super.key});

  @override
  State<SearchJobBottomSheet> createState() => _SearchJobBottomSheetState();
}

class _SearchJobBottomSheetState extends State<SearchJobBottomSheet> {
  final jobDetailsViewModel = Get.put(JobDetailsViewModel());
  final locationDropList = ["India","Uk","Aus","",""];

  var _selectedItem;
  final RxInt jobTypesId = 1.obs;
  final RxInt categoriesId = 1.obs;
  final RxInt countriesId = 1.obs;
  final RxInt experienceLevelsId = 1.obs;
  final RxInt minSalaryId = 1.obs;
  final RxInt maxSalaryId = 1.obs;


  late var minValue = 10.00;
  late var maxValue = 80.00;

  @override
  Widget build(BuildContext context) {
    return  Obx(() => jobDetailsViewModel.getApplyJobDetailsObserver.value.maybeWhen(
      loading: (loading) => const SizedBox(width: double.infinity,height: 250,child:
      Center(child: SizedBox(width: 30,height: 30,child: CircularProgressIndicator(),))
      ),
      success: (data){
        final responseData = (data as ApplyJobDetailsResponseModel).data;
        locationDropList.clear();
        for (var item in (responseData?.countries ?? List.empty())) {
          if(!locationDropList.contains(item?.countryName ?? "")){
            locationDropList.add(item?.countryName ?? "");
          }
        }
        _selectedItem = (responseData?.countries ?? List<Country>.empty()).firstOrNull?.countryName ?? "";
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height * 0.8, // Set your desired maximum height here
          ),
          child: IntrinsicHeight(
            child: Container(color: Colors.white,child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: CustomColors.darkGray),width: 50,height: 5,),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          style: TextStyle(
                            color: CustomColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),"Job Type"),
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: (responseData?.jobType ?? List<JobType>.empty()).map((JobType item) {
                        return GestureDetector(
                          onTap: (){
                            jobTypesId.value = item.id ?? 1;
                          },
                          child: Container(
                              decoration:  (jobTypesId.value == (item.id ?? 1)) ? AppStyles.graySelectedBox :AppStyles.grayBox,
                              child:
                              Padding(
                                padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                child: Text(style: TextStyle(
                                  color: (jobTypesId.value == (item.id ?? 1)) ? Colors.white : CustomColors.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),item.typeName ?? ""),
                              )),
                        );
                      }).toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          style: TextStyle(
                            color: CustomColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),"Category"),
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: (responseData?.categories ?? List<Category>.empty()).map((Category item) {
                        return GestureDetector(
                          onTap: (){
                            categoriesId.value = item.id ?? 1;
                          },
                          child: Container(
                              decoration:  (categoriesId.value == (item.id ?? 1)) ? AppStyles.graySelectedBox :AppStyles.grayBox,
                              child:
                              Padding(
                                padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                child: Text(style: TextStyle(
                                  color: (categoriesId.value == (item.id ?? 1)) ? Colors.white : CustomColors.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),item.categoryName ?? ''),
                              )),
                        );
                      }).toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          style: TextStyle(
                            color: CustomColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),"Location"),
                    ),
                    Container(height: 50,width: double.infinity,decoration: BoxDecoration(
                      color: Colors.white
                      ,borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text(style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w500),'Years of Experienced'),
                          value: _selectedItem,
                          items: locationDropList.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w500),item),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            final value = (responseData?.countries ?? List<Country>.empty()).firstWhere((element) => element.countryName == newValue);
                            countriesId.value = value.id ?? 1;
                            setState(() {
                              _selectedItem = newValue;
                            });
                          }, underline: SizedBox.shrink()
                      ),
                    ),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          style: TextStyle(
                            color: CustomColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),"Experience Level"),
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: (responseData?.experienceLevels ?? List<ExperienceLevel>.empty()).map((ExperienceLevel item) {
                        return GestureDetector(
                          onTap: (){
                            countriesId.value = item.id ?? 1;
                          },
                          child: Container(
                              decoration:  (countriesId.value == (item.id ?? 1)) ? AppStyles.graySelectedBox :AppStyles.grayBox,
                              child:
                              Padding(
                                padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                child: Text(style: TextStyle(
                                  color: (countriesId.value == (item.id ?? 1)) ? Colors.white : CustomColors.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),item.experienceLevelName ?? ''),
                              )),
                        );
                      }).toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          style: TextStyle(
                            color: CustomColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),"Salary"),
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: (responseData?.salaries ?? List<Salary>.empty()).map((Salary item) {
                        return GestureDetector(
                          onTap: (){
                            maxSalaryId.value = item.id ?? 1;
                          },
                          child: Container(
                              decoration:  (maxSalaryId.value == (item.id ?? 1)) ? AppStyles.graySelectedBox :AppStyles.grayBox,
                              child:
                              Padding(
                                padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                child: Text(style: TextStyle(
                                  color: (maxSalaryId.value == (item.id ?? 1)) ? Colors.white : CustomColors.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),item.salaryMonth ?? ''),
                              )),
                        );
                      }).toList(),
                    )
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 5),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text(
                    //           style: TextStyle(
                    //             color: CustomColors.darkGray,
                    //             fontSize: 14,
                    //             fontWeight: FontWeight.w500,
                    //             fontStyle: FontStyle.normal,
                    //           ),"Min Salary"),
                    //       Text(
                    //           style: TextStyle(
                    //             color: CustomColors.darkGray,
                    //             fontSize: 14,
                    //             fontWeight: FontWeight.w500,
                    //             fontStyle: FontStyle.normal,
                    //           ),"Max Salary"),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(width: MediaQuery.of(context).size.width,
                    //   child: CupertinoRangeSlider(
                    //     minValue: minValue, // Current min value
                    //     maxValue: maxValue, // Current max value
                    //     min: 1.0, // Min range value
                    //     max: 100.0, // Max range value
                    //     onMinChanged: (minVal){
                    //       setState(() {
                    //         minValue = minVal;
                    //       });
                    //     },
                    //     onMaxChanged: (maxVal){
                    //       setState(() {
                    //         maxValue = maxVal;
                    //       });
                    //     },
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text(
                    //           style: TextStyle(
                    //             color: CustomColors.primary,
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w500,
                    //             fontStyle: FontStyle.normal,
                    //           ),"₹${minValue.toInt()*1000}/M"),
                    //       Text(
                    //           style: TextStyle(
                    //             color: CustomColors.primary,
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w500,
                    //             fontStyle: FontStyle.normal,
                    //           ),"₹${maxValue.toInt()*1000}/M"),
                    //     ],
                    //   ),
                    // ),
                    ,SizedBox(height: 20),
                    GestureDetector(onTap: (){
                      if(jobTypesId.value != 0 && countriesId.value != 0 && categoriesId.value != 0 && experienceLevelsId.value != 0){
                        Get.back();
                        Get.to(() => JobSearchPage(searchJobsRequestModel: SearchJobsRequestModel(jobTypeId: jobTypesId.value.toString(), categoryId: categoriesId.value.toString(), countryId: countriesId.value.toString(), experienceLevelId: experienceLevelsId.value.toString(), minSalary: "1", maxSalary: "1")));
                        // authViewModel.performGetOtpNumber(GetOtpNumberRequestModel(mobileNumber: editTextController.text));
                      }else{
                        final name = (jobTypesId.value == 0) ? "JobType" : (countriesId.value == 0) ? "Country" : (categoriesId.value == 0) ? "Category" : (experienceLevelsId.value == 0) ? "Experience Level" : "";
                         Get.snackbar('Oops.','Check Your ${name} Is Selected', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
                      }
                      },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'APPLY',textAlign: TextAlign.center,)),)),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),),
          ),
        );
      },
        orElse: () => SizedBox())
    );
  }
}

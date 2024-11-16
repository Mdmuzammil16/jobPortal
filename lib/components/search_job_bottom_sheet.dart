import 'package:butter_fly/pages/job_search_page.dart';
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
  final firstList = ["Full Time","Part Time","Remote","Freelance","Internship"];
  final secondList = ["Biryani ","Part Time","Remote","Freelance","Internship"];
  final locationDropList = ["India","Uk","Aus","",""];
  final experienceList = ["1 Year","2 years","3 years","4 years"];

  var _selectedItem;
  late var minValue = 10.00;
  late var maxValue = 80.00;

  @override
  Widget build(BuildContext context) {
    return  IntrinsicHeight(
      child: Container(color: Colors.white,child: Padding(
        padding: const EdgeInsets.all(15),
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
              children: firstList.map((item) {
                return Container(
                    decoration: AppStyles.grayBox,
                    child:
                    Padding(
                      padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text(style: TextStyle(
                        color: CustomColors.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),item),
                    ));
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
              children: secondList.map((item) {
                return Container(
                    decoration: AppStyles.grayBox,
                    child:
                    Padding(
                      padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text(style: TextStyle(
                        color: CustomColors.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),item),
                    ));
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
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: experienceList.length,
                itemBuilder: (BuildContext context, int index) {
                  final name =  experienceList[index];
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(height:40,decoration: BoxDecoration(
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
                    ),child:Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                            style: TextStyle(
                              color: CustomColors.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),name),
                      ),
                    ) ,),
                  );
                },
              ),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      style: TextStyle(
                        color: CustomColors.darkGray,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),"Min Salary"),
                  Text(
                      style: TextStyle(
                        color: CustomColors.darkGray,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),"Max Salary"),
                ],
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width,
              child: CupertinoRangeSlider(
                minValue: minValue, // Current min value
                maxValue: maxValue, // Current max value
                min: 1.0, // Min range value
                max: 100.0, // Max range value
                onMinChanged: (minVal){
                  setState(() {
                    minValue = minVal;
                  });
                },
                onMaxChanged: (maxVal){
                  setState(() {
                    maxValue = maxVal;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      style: TextStyle(
                        color: CustomColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),"₹${minValue.toInt()*1000}/M"),
                  Text(
                      style: TextStyle(
                        color: CustomColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),"₹${maxValue.toInt()*1000}/M"),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(onTap: (){
              if(true){
                Get.back();
                Get.to(() => JobSearchPage(searchJobsRequestModel: null));
              // authViewModel.performGetOtpNumber(GetOtpNumberRequestModel(mobileNumber: editTextController.text));
            }else{
              Get.snackbar('Oops.','Check Your Mobile Number', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
            }},child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'APPLY',textAlign: TextAlign.center,)),)),
            SizedBox(height: 20),
          ],
        ),
      ),),
    );
  }
}

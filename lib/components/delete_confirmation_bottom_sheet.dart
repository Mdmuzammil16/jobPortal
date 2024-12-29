import 'package:butter_fly/utils/app_style.dart';
import 'package:butter_fly/view_models/user_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_colors.dart';

class DeleteConfirmationBottomSheet extends StatelessWidget {
  final String id;
  const DeleteConfirmationBottomSheet({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final userViewModel = Get.put(UserViewModel());
    return IntrinsicHeight(
      child: Container(color: Colors.white,child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: CustomColors.darkGray),width: 50,height: 5,),
            SizedBox(height: 50),
            Text(
                style: TextStyle(
                  color: CustomColors.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),"Delete"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text(
                  style: TextStyle(
                    color: CustomColors.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),"Are you sure you want to Delete this Resume?"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                decoration: AppStyles.grayBox,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
                  child: Text(
                      style: TextStyle(
                        color: CustomColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),"No"),
                ),
              ),
              SizedBox(width: 20,),GestureDetector(
                  onTap: (){
                    Get.back();
                    userViewModel.performDeleteResumes(id);
                  },
                  child: Container(decoration: AppStyles.primaryButton,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal:20,vertical: 10),
                      child: Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),"Yes"),
                    ),
                  ),
                ),
            ],),
            SizedBox(height: 20),
          ],
        ),
      ),),
    );
  }
}


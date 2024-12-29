import 'package:butter_fly/request_models/job_details_request_model.dart';
import 'package:butter_fly/responce_models/book_marks_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';
import '../utils/custom_colors.dart';


class BookMarksViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());

  final fetchBookMarksObserver = const ApiResult<BookMarksResponseModel>.init().obs;
  final addToBookMarkObserver = const ApiResult<String>.init().obs;



  void performFetchBookMarks() async {
    try {
      fetchBookMarksObserver.value = const ApiResult.loading("");
      final response = await apiProvider.get(EndPoints.getBookMarks);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = BookMarksResponseModel.fromJson(body);
        if (responseData.success == true) {
          fetchBookMarksObserver.value = ApiResult.success(responseData);
        } else {
          throw responseData.message ?? '';
        }
      } else {
        throw 'something went wrong+${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
      fetchBookMarksObserver.value = ApiResult.error(e.toString());
    }
  }

  void performAddToBookMark(AddToBookMarkRequestModel request) async {
    try {
      addToBookMarkObserver.value = ApiResult.loading(request.jobId.toString());
      final response = await apiProvider.post(EndPoints.addToBookMark,request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = BookMarksResponseModel.fromJson(body);
        if (responseData.success == true) {
          Get.snackbar('Success',"JobDetails Successfully Saved As Your BookMarks ", snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary, colorText: Colors.white);
          addToBookMarkObserver.value = ApiResult.success(request.jobId.toString());
        } else {
          throw responseData.message ?? '';
        }
      } else {
        throw 'something went wrong+${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
      addToBookMarkObserver.value = ApiResult.error(e.toString());
    }
  }

}
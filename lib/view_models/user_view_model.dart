import 'package:butter_fly/responce_models/auth_response_model.dart';
import 'package:butter_fly/responce_models/user_response_model.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';
import '../pages/job_details_entry_page.dart';
import '../pages/register_user_page.dart';
import '../responce_models/job_details_response_model.dart';
import '../responce_models/notification_response_model.dart';

class UserViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());

  final fetchResumesObserver = const ApiResult<UserResumesResponseModel>.init().obs;
  final fetchUserDetailsObserver = const ApiResult<UserDetailsResponseModel>.init().obs;
  final deleteResumeObserver = const ApiResult<DeleteResumeResponse>.init().obs;
  Rx<String> homePageSearchQuery = "".obs;

  void performFetchUserDetails() async {
    try {
      fetchUserDetailsObserver.value = const ApiResult.loading("");
      final response = await apiProvider.get(EndPoints.editProfile);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = UserDetailsResponseModel.fromJson(body);
        if (responseData.success == true) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString("userName",responseData.data?.name ?? "");
          if(responseData.data?.name == null){
            Get.offAll(() => RegisterUserPage(mobileNumber: responseData.data?.mobileNumber ?? "",));
          }
          fetchUserDetailsObserver.value = ApiResult.success(responseData);
        } else {
          throw responseData.message ?? '';
        }
      } else {
        throw 'something went wrong+${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
      fetchUserDetailsObserver.value = ApiResult.error(e.toString());
    }
  }

  void performFetchResumes() async {
    try {
      fetchResumesObserver.value = const ApiResult.loading("");
      final response = await apiProvider.get(EndPoints.getUserResumes);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = UserResumesResponseModel.fromJson(body);
        if (responseData.success == true) {
          fetchResumesObserver.value = ApiResult.success(responseData);
        } else {
          throw responseData.message ?? '';
        }
      } else {
        throw 'something went wrong+${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
      fetchResumesObserver.value = ApiResult.error(e.toString());
    }
  }

  void performDeleteResumes(String id) async {
    try {
      deleteResumeObserver.value = ApiResult.loading(id);
      final response = await apiProvider.delete("${EndPoints.deleteResume}/$id");
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = DeleteResumeResponse.fromJson(body);
        if (responseData.success == true) {
          Get.snackbar('Success',"Resume Deleted Successfully", snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary, colorText: Colors.white);
          performFetchResumes();
          deleteResumeObserver.value = ApiResult.success(responseData);
        } else {
          throw responseData.message ?? '';
        }
      } else {
        throw 'something went wrong+${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
      deleteResumeObserver.value = ApiResult.error(e.toString());
    }
  }
}
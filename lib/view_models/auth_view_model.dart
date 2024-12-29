import 'dart:convert';
import 'dart:io';

import 'package:butter_fly/api/api_provider.dart';
import 'package:butter_fly/pages/job_details_entry_page.dart';
import 'package:butter_fly/pages/main_page.dart';
import 'package:butter_fly/pages/register_user_page.dart';
import 'package:butter_fly/request_models/auth_request_model.dart';
import 'package:butter_fly/responce_models/auth_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;


import '../api/api_result.dart';
import '../api/end_points.dart';
import '../pages/otp_verification_page.dart';
import '../utils/custom_colors.dart';



class AuthViewModel extends GetxController{
  final apiProvider = Get.put(ApiProvider());
  final selectedOption = 0.obs;
  Rx<File> uploadResumeFile = File('').obs;

  final  getOtpNumberObserver = const ApiResult<GetOtpNumberResponseModel>.init().obs;

  final  checkOtpNumberObserver = const ApiResult<CheckOtpNumberResponseModel>.init().obs;
  final  registerUserObserver = const ApiResult<RegisterUserResponseModel>.init().obs;
  final  updateProfileObserver = const ApiResult<RegisterUserResponseModel>.init().obs;

  final  getUserExperienceObserver = const ApiResult<GetUserExperienceResponse>.init().obs;
  final  uploadUserExperienceObserver = const ApiResult<UploadWorkExperienceResponseModel>.init().obs;


  void performGetOtpNumber(GetOtpNumberRequestModel request) async {
    try {
      getOtpNumberObserver.value = const ApiResult.loading("");
      final response = await apiProvider.postFormData(EndPoints.getOtpNumber, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = GetOtpNumberResponseModel.fromJson(body);
        if (responseData.success == true) {
          getOtpNumberObserver.value = ApiResult.success(responseData);
          Get.to(() => OtpVerificationPage(mobileNumber: request.mobileNumber ?? "",otp:responseData.data?.otp));
          // Get.offAll(() => VerifyOtpPage(mobile: request.mobile));
        } else {
          getOtpNumberObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('Error','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        getOtpNumberObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      getOtpNumberObserver.value = ApiResult.error(e.toString());
    }
  }

  void performCheckOtpNumber(CheckOtpNumberRequestModel request) async {
    try {
      checkOtpNumberObserver.value = const ApiResult.loading("");
      final response = await apiProvider.postFormData(EndPoints.checkOtpVerification, request.toJson());
      final body = response.body;
      if (body != null) {
        final responseData = CheckOtpNumberResponseModel.fromJson(body);
        if (responseData.success == true) {
          checkOtpNumberObserver.value = ApiResult.success(responseData);
          SharedPreferences prefs = await SharedPreferences.getInstance();
          final verifyOtpResponse = responseData.data;
          prefs.setString("token",verifyOtpResponse?.token ?? "");
          if((verifyOtpResponse?.token ?? "").isNotEmpty == true){
            Get.offAll(() => const MainPage());
          }
          else{
            Get.offAll(() => JobDetailsEntryPage(userId: verifyOtpResponse?.userInfo?.id ?? 0, fromUploadResumePage: false,));
          }
        } else {
          throw responseData.data ?? "";
        }
      } else {
        throw 'something went wrong +${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      checkOtpNumberObserver.value = ApiResult.error(e.toString());
    }
  }

  void performRegisterUser(RegisterUserRequestModel request) async {
    try {
      registerUserObserver.value = const ApiResult.loading("");
      final response = await apiProvider.postFormData(EndPoints.register, request.toJson());
      final body = response.body;
      if (body != null) {
        final responseData = RegisterUserResponseModel.fromJson(body);
        if (responseData.success == true) {
          Get.offAll(() => const MainPage());
          registerUserObserver.value = ApiResult.success(responseData);
        } else {
          throw responseData.message ?? "";
        }
      } else {
        throw 'something went wrong + ${response.statusText ?? 0}';
      }
    } catch (err) {
      Get.snackbar('Exception',err.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      registerUserObserver.value = ApiResult.error(err.toString());
    }
  }

  void performUpdateProfile(RegisterUserRequestModel request) async {
    try {
      updateProfileObserver.value = const ApiResult.loading("");
      final response = await apiProvider.postFormData(EndPoints.updateProfile, request.toJson());
      final body = response.body;
      if (body != null) {
        final responseData = RegisterUserResponseModel.fromJson(body);
        if (responseData.success == true) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString("userName",request.name ?? "");
          updateProfileObserver.value = ApiResult.success(responseData);
          Get.back();
        } else {
          throw responseData.data ?? "";
        }
      } else {
        throw 'something went wrong +${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      updateProfileObserver.value = ApiResult.error(e.toString());
    }
  }

  void performGetUserExperience() async {
    try {
      getUserExperienceObserver.value = const ApiResult.loading("");
      final response = await apiProvider.getApi(EndPoints.getUserExperienceData);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = GetUserExperienceResponse.fromJson(body);
        if (responseData.success == true) {
          getUserExperienceObserver.value = ApiResult.success(responseData);
          // Get.offAll(() => OtpVerificationPage(mobileNumber: request.mobileNumber ?? ""));
          // Get.offAll(() => VerifyOtpPage(mobile: request.mobile));
        } else {
          getUserExperienceObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('Error','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        getUserExperienceObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      getUserExperienceObserver.value = ApiResult.error(e.toString());
    }
  }

  void performUploadUserExperience(UserWorkExperienceRequestModel requestBody,File resume,bool fromUploadResumePage) async {
    try {
      uploadUserExperienceObserver.value = const ApiResult.loading("");
      var uri = Uri.parse(apiProvider.apiLiveBaseUrl + EndPoints.userWorkExperience);
      var request = http.MultipartRequest('POST', uri);
      request.headers['ApiKey'] = apiProvider.apiKey;
      request.headers['authorization'] = apiProvider.token;
      request.fields['user_id'] = requestBody.userId ?? "";
      request.fields['user_experience_id'] = requestBody.userExperienceId ?? "";
      request.fields['years_of_experienced'] = requestBody.yearsOfExperienced ?? "";

      var stream = http.ByteStream(resume.openRead());
      stream.cast();
      var length = await resume.length() ?? 0;
      var multipart = http.MultipartFile(
        'resume',
        stream,
        length,
        filename: resume.path
            .split('/')
            .last,
      );
      request.files.add(multipart);
      var response = await request.send();

      String responseBody = await response.stream.bytesToString();
      final json = jsonDecode(responseBody);
      final jsonData = UploadWorkExperienceResponseModel.fromJson(json);
      if (jsonData.success == true) {
        if(fromUploadResumePage){
          Get.snackbar('Success',"Details Uploaded Successfully", snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
          int count = 0;
          Get.until((route) => count++ == 1);
        }else{
          final responseData = UserWorkExperienceResponseModel.fromJson(jsonData.data);
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString("token",responseData.token ?? "");
          Get.offAll(() => const MainPage());
        }
        uploadUserExperienceObserver.value = ApiResult.success(jsonData);
      } else {
        uploadUserExperienceObserver.value = ApiResult.error(jsonData.message ?? "");
        Get.snackbar(jsonData.message ?? '', jsonData.message ?? '',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      uploadUserExperienceObserver.value = ApiResult.error(e.toString());
    }
  }

}
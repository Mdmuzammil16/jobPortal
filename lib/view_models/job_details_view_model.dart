import 'package:butter_fly/api/api_provider.dart';
import 'package:butter_fly/responce_models/apply_job_details_response_model.dart';
import 'package:butter_fly/responce_models/job_details_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../api/api_result.dart';
import '../api/end_points.dart';
import '../request_models/job_details_request_model.dart';
import '../utils/custom_colors.dart';

class JobDetailsViewModel extends GetxController{
  final apiProvider = Get.put(ApiProvider());
  final  getApplyJobDetailsObserver = const ApiResult<ApplyJobDetailsResponseModel>.init().obs;
  final  getAllJobsObserver = const ApiResult<JobDetailsResponseModel>.init().obs;
  final getPopularJobsDataObserver = const ApiResult<JobDetailsResponseModel>.init().obs;
  final getRecomendedJobsObserver = const ApiResult<JobDetailsResponseModel>.init().obs;
  final getFeatureJobsObserver = const ApiResult<JobDetailsResponseModel>.init().obs;
  final getJobDetailsByJobIDObserver = const ApiResult<JobDetailsResponseModel>.init().obs;
  final searchJobsObserver = const ApiResult<JobDetailsResponseModel>.init().obs;

  void performFetchApplyJobDetails() async {
    try {
      getApplyJobDetailsObserver.value = const ApiResult.loading("");
      final response = await apiProvider.getApi(EndPoints.applyJobDetails);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = ApplyJobDetailsResponseModel.fromJson(body);
        if (responseData.success == true) {
          getApplyJobDetailsObserver.value = ApiResult.success(responseData);
        } else {
          throw responseData.message ?? '';
        }
      } else {
        throw 'something went wrong+${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      getApplyJobDetailsObserver.value = ApiResult.error(e.toString());
    }
  }

  void performGetAllJobs() async {
    try {
      getAllJobsObserver.value = const ApiResult.loading("");
      final response = await apiProvider.getApi(EndPoints.getAllJobs);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = JobDetailsResponseModel.fromJson(body);

        if (responseData.success == true) {
          getAllJobsObserver.value = ApiResult.success(responseData);
        } else {
          getAllJobsObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('Error','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        getAllJobsObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      getAllJobsObserver.value = ApiResult.error(e.toString());
    }
  }

  void performGetPopularJobsData() async {
    try {
      getPopularJobsDataObserver.value = const ApiResult.loading("");
      final response = await apiProvider.getApi(EndPoints.getPopularJobsData);
      final body = response.body;
      if (body != null) {
        final responseData = JobDetailsResponseModel.fromJson(body);
        if (responseData.success == true) {
          getPopularJobsDataObserver.value = ApiResult.success(responseData);
        } else {
          getPopularJobsDataObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('Error','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        getPopularJobsDataObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      getPopularJobsDataObserver.value = ApiResult.error(e.toString());
    }
  }


  void performGetRecomendedJobs() async {
    try {
      getRecomendedJobsObserver.value = const ApiResult.loading("");
      final response = await apiProvider.getApi(EndPoints.getRecomendedJobs);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = JobDetailsResponseModel.fromJson(body);
        if (responseData.success == true) {
          getRecomendedJobsObserver.value = ApiResult.success(responseData);
        } else {
          getRecomendedJobsObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('Error','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        getRecomendedJobsObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      getRecomendedJobsObserver.value = ApiResult.error(e.toString());
    }
  }



  void performGetFeatureJobs() async {
    try {
      getFeatureJobsObserver.value = const ApiResult.loading("");
      final response = await apiProvider.getApi(EndPoints.getFeatureJobs);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = JobDetailsResponseModel.fromJson(body);
        if (responseData.success == true) {
          getFeatureJobsObserver.value = ApiResult.success(responseData);
        } else {
          getFeatureJobsObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('Error','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        getFeatureJobsObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      getFeatureJobsObserver.value = ApiResult.error(e.toString());
    }
  }


  void performGetJobDetailsByJobIDObserver(String id) async {
    try {
      getJobDetailsByJobIDObserver.value = const ApiResult.loading("");
      final response = await apiProvider.getApi('${EndPoints.getJobDetailsByJobID}/${id}');
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = JobDetailsResponseModel.fromJson(body);
        if (responseData.success == true) {
          getJobDetailsByJobIDObserver.value = ApiResult.success(responseData);
        } else {
          getJobDetailsByJobIDObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('Error','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        getJobDetailsByJobIDObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      getJobDetailsByJobIDObserver.value = ApiResult.error(e.toString());
    }
  }

  void performSearchJobs(SearchJobsRequestModel request) async {
    try {
      searchJobsObserver.value = const ApiResult.loading("");
      final response = await apiProvider.postFormData(EndPoints.searchJobs, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = JobDetailsResponseModel.fromJson(body);
        if (responseData.success == true) {
          searchJobsObserver.value = ApiResult.success(responseData);
        } else {
          searchJobsObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('Error','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        searchJobsObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
      searchJobsObserver.value = ApiResult.error(e.toString());
    }
  }

}
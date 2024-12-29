import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';
import '../responce_models/category_response_model.dart';
import '../responce_models/job_details_response_model.dart';

class CategoryViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());

  final fetchCategoriesObserver = const ApiResult<CategoryResponseModel>.init().obs;



  void performFetchCategories() async {
    try {
      fetchCategoriesObserver.value = const ApiResult.loading("");
      final response = await apiProvider.get(EndPoints.getCategories);
      final body = response.body;
      if (response.isOk && body != null) {
        print("hello1");
        print(response.toString());
        final responseData = CategoryResponseModel.fromJson(body);
        if (responseData.success == true) {
          fetchCategoriesObserver.value = ApiResult.success(responseData);
        } else {
          throw responseData.message ?? '';
        }
      } else {
        print("hello2");
        print(response.toString());
        throw 'something went wrong+${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
      fetchCategoriesObserver.value = ApiResult.error(e.toString());
    }
  }
}
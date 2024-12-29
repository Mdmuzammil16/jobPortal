import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';
import '../responce_models/job_details_response_model.dart';
import '../responce_models/notification_response_model.dart';

class NotificationViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());

  final fetchNotificationsObserver = const ApiResult<NotificationResponseModel>.init().obs;



  void performFetchNotifications() async {
    try {
      fetchNotificationsObserver.value = const ApiResult.loading("");
      final response = await apiProvider.get(EndPoints.getNotifications);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = NotificationResponseModel.fromJson(body);
        if (responseData.success == true) {
          fetchNotificationsObserver.value = ApiResult.success(responseData);
        } else {
          throw responseData.message ?? '';
        }
      } else {
        throw 'something went wrong+${response.statusText ?? 0}';
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
      fetchNotificationsObserver.value = ApiResult.error(e.toString());
    }
  }
}
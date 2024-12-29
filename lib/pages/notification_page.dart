import 'package:butter_fly/components/notification_component.dart';
import 'package:butter_fly/components/second_heading_component.dart';
import 'package:butter_fly/responce_models/notification_response_model.dart';
import 'package:butter_fly/view_models/notification_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final notificationViewModel = Get.put(NotificationViewModel());

  @override
  void initState() {
    super.initState();
    notificationViewModel.performFetchNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(top: true,child: Column(
      children: [
        SecondHeadingComponent(backPress: (){
          Get.back();
        },headingName: "Notification"),
        Expanded(
          child: Obx(() => notificationViewModel.fetchNotificationsObserver.value.maybeWhen(
              loading: (loading) => const Center(child: SizedBox(width: 30,height: 30,child: CircularProgressIndicator(),)),
              success: (data){
                final responseData = (data as NotificationResponseModel).data;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:responseData?.notifications?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      final notification =  responseData?.notifications?[index];
                      return NotificationComponent(notificationModel: notification);
                    },
                  ),
                );
              },
              orElse: () => SizedBox())
          ),
        ),
      ],
    )),);
  }
}

import 'package:butter_fly/components/notification_component.dart';
import 'package:butter_fly/components/second_heading_component.dart';
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
          child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
             return const NotificationComponent();
                },
              ),
        ),
      ],
    )),);
  }
}

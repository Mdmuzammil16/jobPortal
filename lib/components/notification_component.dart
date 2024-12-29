import 'package:butter_fly/responce_models/notification_response_model.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_network_image.dart';

class NotificationComponent extends StatefulWidget {
  final NotificationModel? notificationModel;
  const NotificationComponent({super.key, required this.notificationModel});

  @override
  State<NotificationComponent> createState() => _NotificationComponentState();
}

class _NotificationComponentState extends State<NotificationComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,boxShadow: [
          BoxShadow(
            color: CustomColors.gray,
            spreadRadius: 3,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
            SizedBox(width: 100,height: 100,child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CustomNetworkImage(imageUrl: widget.notificationModel?.companyImage ?? "",fit:BoxFit.cover,)),),
              Expanded(
                child: Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: CustomColors.secondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),widget.notificationModel?.companyName ?? ""),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: const Text(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus.."),
                      ),
                      Text(
                          style: TextStyle(
                            color: CustomColors.darkGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),"1 Min Ago")
                    ],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

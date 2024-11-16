import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationComponent extends StatefulWidget {
  const NotificationComponent({super.key});

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
              Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: CustomColors.gray)),child: Padding(
                padding: const EdgeInsets.all(1),
                child: Image.asset("assets/images/example.png",width: 100,height: 100,),
              )),
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
                          ),"Hotel Vengamamba"),
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

import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../pages/book_marks_page.dart';

class SecondHeadingComponent extends StatefulWidget {
  final VoidCallback? backPress;
  final String headingName;
  const SecondHeadingComponent({super.key,required this.headingName,this.backPress});

  @override
  State<SecondHeadingComponent> createState() => _SecondHeadingComponentState();
}

class _SecondHeadingComponentState extends State<SecondHeadingComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(height:60,color: CustomColors.primary,child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(onTap:widget.backPress,child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,color: Colors.white,),
        )),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),widget.headingName),
        ),
      ),
        Visibility(visible: false,child: GestureDetector(onTap:widget.backPress,child: Image.asset("assets/images/share.png",width: 20,height: 20,))),
       GestureDetector(onTap:(){
         Get.to(() => BookMarksPage(backBtnVisible: true));
       },child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10),
         child: Image.asset("assets/images/bookmark.png",width: 20,height: 20,),
       )),
    ],),);
  }
}

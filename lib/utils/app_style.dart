import 'dart:ui';

import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._();

  static  final  primaryButton = BoxDecoration(borderRadius: BorderRadius.circular(10),color: CustomColors.primary);


  static  final  primaryButtonStyle = BoxDecoration(
    color: CustomColors.primary
    ,borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 4,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static  final  grayBox = BoxDecoration(
    color: CustomColors.gray
    ,borderRadius: BorderRadius.circular(10)
  );

  static  final  primaryContainerStyle = BoxDecoration(
      color: CustomColors.secondary
      ,borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.black54, // Set the border color (you can adjust the shade of green)
        width: 1.0, // Set the border width
      ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 4,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static  final  tabBackGround = BoxDecoration(
      color: CustomColors.primary
      ,borderRadius: BorderRadius.circular(100),
      border: Border.all(
        color: CustomColors.textColor, // Set the border color (you can adjust the shade of green)
        width: 1.5, // Set the border width
      ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 4,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static final gradientColor = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        CustomColors.primary,
        CustomColors.secondary,
      ],
    ),
  );

  static  const  textError = TextStyle(
      color: Colors.red
      ,fontWeight: FontWeight.w800,
      fontSize: 16
  );
}
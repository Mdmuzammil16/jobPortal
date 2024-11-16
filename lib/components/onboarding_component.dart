import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenComponent extends StatelessWidget {
  final String image;
  final String text;
  OnBoardingScreenComponent({super.key ,required this.text, required this.image });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: IntrinsicHeight(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image.asset(image,width: 200,height:200),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:50),
                  child: Text(
                      style: TextStyle(
                        color: CustomColors.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),text),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

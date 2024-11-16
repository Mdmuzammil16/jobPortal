import 'package:butter_fly/pages/main_page.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed( const Duration(seconds: 2) , () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token') ?? '';
      if(token.isNotEmpty){
        Get.offAll(() => const MainPage());
      }
      else{
        Get.offAll(() => const OnBoardingScreens());
      }

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/app_logo.png",height: 150,width: 150),
                  const SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                      minHeight: 10, // Customize the height of the progress bar
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
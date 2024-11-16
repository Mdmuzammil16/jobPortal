import 'package:butter_fly/pages/main_page.dart';
import 'package:butter_fly/pages/splash_screen.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: CustomColors.primary,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jobs Easy',
      debugShowCheckedModeBanner: false,
      popGesture: true,
      defaultTransition: Transition.rightToLeft,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primary),
        useMaterial3: true,
      ),
      home:  const SplashScreen(),
    );
  }
}
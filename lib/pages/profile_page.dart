import 'package:butter_fly/components/second_heading_component.dart';
import 'package:butter_fly/components/settings_component.dart';
import 'package:butter_fly/pages/change_password_page.dart';
import 'package:butter_fly/pages/edit_profile_page.dart';
import 'package:butter_fly/pages/forgot_password_page.dart';
import 'package:butter_fly/pages/notification_page.dart';
import 'package:butter_fly/pages/register__user_page.dart';
import 'package:butter_fly/pages/update_profile_page.dart';
import 'package:butter_fly/pages/upload_resume_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/custom_colors.dart';
import 'mobile_verification_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SingleChildScrollView(child: IntrinsicHeight(child: Stack(children: [
        Container(color: CustomColors.primary,height: 100),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(() => UpdateProfilePage());
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),height: 100,width: 100,child: ClipOval(child: Image.asset("assets/images/example.png"))),
                        ),
                        const Text(
                            textAlign:TextAlign.justify,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              fontStyle: FontStyle.normal,
                            ),"Bunny"),
                        const Text(
                            textAlign:TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),"Biryani Master")

                      ],
                    ),
                  )
                ],),
            ),
              SettingsComponent(image: "assets/images/profile_outlined.png", name: "Edit Profile",onPress: (){
                Get.to(() => const EditProfile());
              },),
               SettingsComponent(image: "assets/images/notification_outlined.png", name: "Notification", onPress: () {
                 Get.to(() => const NotificationPage());
               },),
               SettingsComponent(image: "assets/images/upload_resume.png", name: "Upload Resume", onPress: () {
                 Get.to(() => const UploadResumePage());
               },),
               SettingsComponent(image: "assets/images/applied_jobs.png", name: "Applied Jobs", onPress: () {
                 Get.to(() => RegisterUserPage());
               },),
               SettingsComponent(image: "assets/images/about_us.png", name: "About Us", onPress: () {  },),
               SettingsComponent(image: "assets/images/privacy_policy.png", name: "Privacy Policy", onPress: () {  },),
               SettingsComponent(image: "assets/images/help.png", name: "Help", onPress: () {  },),
               SettingsComponent(image: "assets/images/log_out.png", name: "LogOut", onPress: () async {
                 SharedPreferences prefs = await SharedPreferences.getInstance();
                 prefs.remove('token');
                 prefs.clear();
                 Get.offAll( () => const MobileVerificationPage());
               },)
            ],),
        )
      ],)))),
    );
  }
}

import 'package:butter_fly/components/second_heading_component.dart';
import 'package:butter_fly/components/settings_component.dart';
import 'package:butter_fly/pages/change_password_page.dart';
import 'package:butter_fly/pages/edit_profile_page.dart';
import 'package:butter_fly/pages/forgot_password_page.dart';
import 'package:butter_fly/pages/notification_page.dart';
import 'package:butter_fly/pages/privacyPolicy_page.dart';
import 'package:butter_fly/pages/register_user_page.dart';
import 'package:butter_fly/pages/update_profile_page.dart';
import 'package:butter_fly/pages/upload_resume_page.dart';
import 'package:butter_fly/responce_models/user_response_model.dart';
import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:butter_fly/view_models/user_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/custom_colors.dart';
import 'about_us_page.dart';
import 'mobile_verification_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final userViewModel = Get.put(UserViewModel());


  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){

      },
      onStart: (){
        userViewModel.performFetchUserDetails();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: SingleChildScrollView(child: IntrinsicHeight(child: Stack(children: [
          Container(color: CustomColors.primary,height: 100),
          Obx(() => userViewModel.fetchUserDetailsObserver.value.maybeWhen(
            loading: (loading) => SizedBox(height:400,width:double.infinity,child: Center(child: SizedBox(width: 40,height: 40,child: CircularProgressIndicator(color: CustomColors.primary,),),)),
              success: (data){
                final userData = (data as UserDetailsResponseModel).data;
                return  Padding(
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
                                Get.to(() => UpdateProfilePage(userDataModel: userData));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),height: 100,width: 100,child: ClipOval(child: Image.asset("assets/images/example.png"))),
                                  ),
                                  Text(
                                      textAlign:TextAlign.justify,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FontStyle.normal,
                                      ),userData?.name ?? ""),
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
                        Get.to(() =>  EditProfile(userDataModel: userData));
                      },),
                      SettingsComponent(image: "assets/images/notification_outlined.png", name: "Notification", onPress: () {
                        Get.to(() => const NotificationPage());
                      },),
                      SettingsComponent(image: "assets/images/upload_resume.png", name: "Upload Resume", onPress: () {
                        Get.to(() => UploadResumePage(userId: userData?.id ?? 0));
                      },),
                      // SettingsComponent(image: "assets/images/applied_jobs.png", name: "Applied Jobs", onPress: () {
                      //   // Get.to(() => RegisterUserPage(mobileNumber: userData?.mobileNumber ?? ""));
                      // },),
                      SettingsComponent(image: "assets/images/about_us.png", name: "About Us", onPress: () {
                        Get.to(() => AboutUsPage());
                      },),
                      SettingsComponent(image: "assets/images/privacy_policy.png", name: "Privacy Policy", onPress: () {
                        Get.to(() => PrivacyPolicyPage());
                      },),
                      // SettingsComponent(image: "assets/images/help.png", name: "Help", onPress: () {  },),
                      SettingsComponent(image: "assets/images/log_out.png", name: "LogOut", onPress: () async {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.remove('token');
                        prefs.clear();
                        Get.offAll( () => const MobileVerificationPage());
                      },)
                    ],),
                );
              },
              orElse: () => SizedBox()
          )
          )
        ],)))),
      ),
    );
  }
}

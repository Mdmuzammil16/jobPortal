import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/custom_colors.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Container(height:60,color: CustomColors.primary,child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(onTap:(){
                  Get.back();
                },child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,color: Colors.white,),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),"About Us"),
                )
              ],),),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Jobs Easy',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'At Jobs Easy, we aim to connect talented individuals with the right job opportunities. Our mission is to simplify the job search process, helping job seekers find the perfect role while assisting companies in hiring the best candidates.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'What We Do:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '- Connect job seekers with the best career opportunities.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      Text(
                        '- Provide employers with a platform to find top talent.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      Text(
                        '- Offer tools and resources like resume building, interview tips, and career advice.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Why Choose Us?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '- **Wide Range of Jobs:** From entry-level to experienced roles.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      Text(
                        '- **Trusted Employers:** Connect with companies that value your skills.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      Text(
                        '- **User-Friendly Interface:** Effortless job application process.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Our Vision:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'To become the most trusted job search platform that connects professionals with employers globally.',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Our Mission:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Empower individuals to build successful careers while assisting employers in finding the right talent.',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

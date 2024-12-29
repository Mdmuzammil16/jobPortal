import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/over_view_list_component.dart';
import '../components/second_heading_component.dart';
import '../utils/custom_colors.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      ),"Privacy Policy"),
                )
              ],),),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'We are committed to protecting our users\' privacy. Keeping the information you share with us on the Service, secure and ensuring your understanding of how we collect, use and maintain your information is important to us at JobsEasy (herein referred to as “JobsEasy” or “We” “Our” “Us”). We maintain physical, electronic and procedural safeguards to protect your information and while no data transmission over the Internet is 100% secure from intrusion, we intend to use all commercially reasonable efforts to ensure the protection of your information.',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                              ),
                            ),SizedBox(height: 10),
                            Text(
                              "All Consultation calls completed through our mobile app are secured and we do not have access to any interaction that may occur between a User and a Consultant. We will not share your personal identifiable information publicly.",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                              ),
                            )
                          ,SizedBox(height: 10),
                            Text(
                              'As provided in our website Terms and Conditions, we do not share personal identifiable information of Celebrities/Consultant you interact with through JobsEasy. We expressly discourage having any form of physical engagement with any individual you interact with through our platform.',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                              ),
                            ),SizedBox(height: 10),
                            Text('Please read this Privacy Policy carefully before using JobsEasy Website or submitting personal information to us.',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(height: 20),
                            OverViewListComponent(title: '1. ELIGIBILITY', message: 'JobsEasy does not knowingly collect any information from persons under the age of 18. JobsEasy, or people who post on JobsEasy, may provide links to their website or third party websites, which may have different privacy practices. We are not responsible for, nor have any control over, the privacy policies of those third party websites, and encourage all users to read the privacy policies of each and every website visited.')
                            ,OverViewListComponent(title: '2. DATA WE COLLECT.', message: '     In General. JobsEasy collects Personal Information of Users and Consultants (name, phone number and email id, among other details). By providing such information/Data to us, you consent to the collection, use and disclosure of such information/Data as permitted by applicable privacy laws. JobsEasy may also collect your geo-location information. We may collect this information through a website, mobile application or other online service.')
                            ,OverViewListComponent(title: '3. PERSONAL INFORMATION WE COLLECT.', message:
                               'When creating an account with JobsEasy, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (“Personal Data”). Personally identifiable information may include, but is not limited to: \n\n  Email address \n\n  First name and last name \n\n Phone number. \n\n Payment information \n \n Address, State, Province, ZIP/Postal code, City \n \n Cookies and Usage Data.'
                            )
                            ,OverViewListComponent(title: '4.HOW DO WE USE YOUR INFORMATION?', message:
                               ' Our use of your personal data will always have a lawful basis, either because it is necessary for our performance of a contract with you, because you have consented to Our use of your personal data (e.g. by subscribing to emails), or because it is in Our legitimate interests. Specifically, We may use your data for the following purposes:Providing and managing your access to Our Service; \n\n Personalizing and tailoring your experience on Our Service; \n\n Personalizing and tailoring Our services for you; \n \n Replying to emails from you; \n \n Market research; \n\n Analyzing your use of Our Service and gathering feedback to enable us to continually improve Our Service and your user experience.'
                             )
                            ,OverViewListComponent(title: '5. HOW DO WE PROTECT VISITOR INFORMATION?', message:
                            'Our mobile application is scanned on a regular basis for security holes and known vulnerabilities in order to make your visit to our Service as safe as possible. We implement a variety of security measures to maintain the safety of your personal information.'
                            )
                            ,OverViewListComponent(title: '6. DO WE USE \'COOKIES\'?', message:
                                'Yes. Cookies are small files that a Service or its service provider transfers to your computer\'s hard drive through your Web browser (if you allow) that enables the Service\'s or service provider\'s systems to recognize your browser and capture and remember certain information. For instance, we use cookies to help us remember and process the items in your shopping cart. They are also used to help us understand your preferences based on previous or current Service activity, which enables us to provide you with improved services. We also use cookies to help us compile aggregate data about Service traffic and Service interaction so that we can offer better Service experiences and tools in the future. \n\n  We use cookies to: \n\n  Understand and save user\'s preferences for future visits. \n\n Keep track of advertisements. \n\n Compile aggregate data about Service traffic and Service interactions in order to offer better Service experiences and tools in the future. We may also use trusted third party services that track this information on our behalf. \n\n      You can choose to have your computer warn you each time a cookie is being sent, or you can choose to turn off all cookies. You do this through your browser (like Internet Explorer) settings. Each browser is a little different, so look at your browser\'s Help menu to learn the correct way to modify your cookies. \n\n If you disable cookies off, some features will be disabled. It may affect the functionality of the Service that may make your Service experience less efficient and some of our services will not function properly. However, you may still be able to place orders.'
                            )
                            ,OverViewListComponent(title: '7. THIRD PARTY LINKS', message:
                            'Occasionally, at our discretion, we may include or offer third party products or services on our website. These third party sites have separate and independent privacy policies. We therefore have no responsibility or liability for the content and activities of these linked sites. Nonetheless, we seek to protect the integrity of our Service and welcome any feedback about these sites.'
                            )
                            ,OverViewListComponent(title: '8. HOW WE MAY SHARE YOUR INFORMATION', message:
                            'We may share personal information with: Service providers. We may share information, including personal information, with third parties and individuals who perform certain services on our behalf. These services may include providing customer service and marketing assistance, performing business and sales analysis, ad tracking and analytics, member screenings, supporting our website or application functionality, and supporting contests, sweepstakes, surveys and other features offered through our Service. JobsEasy may also share your name and contact information with our service providers. These service providers may have access to personal information needed to perform their functions but are not permitted to share or use such information for any other purposes. Business partners. We may share personal information with the businesses with which we partner to offer you the applicable products, services or any advertisements. When you elect to engage in a particular merchant\'s offer or program, you authorize us to provide your email address and other information to that merchant. Other Events. JobsEasy may disclose information about its users if required to do so by law or in the good faith belief that such disclosure is reasonably necessary to respond to subpoenas, court orders, or other legal process. JobsEasy may also disclose information about its users to law enforcement officers or others, in the good faith belief that such disclosure is reasonably necessary to: enforce our Terms & Conditions and respond to claims that any posting or other content violates the rights of third-parties; or protect the rights, property, or personal safety of JobsEasy, its users or general public.'
                            )
                            ,OverViewListComponent(title: '9. HOW WE PROTECT YOUR PERSONAL INFORMATION', message:
                            'JobsEasy takes appropriate security measures (including physical, electronic and procedural measures) to help safeguard your personal information from unauthorized access and disclosure. We want you to feel confident using our website to transact business. However, no system can be completely secure. Therefore, although we take steps to secure your information, we do not promise, and you should not expect, that any information, searches, or other communications will always remain secure. Users should also take care with how they handle and disclose their personal information and should avoid sending personal information through insecure emails or other modes of communication. You agree that we may communicate with you electronically regarding security, privacy, and administrative issues, such as security breaches. JobsEasy may post a notice on our Service if a security breach occurs. JobsEasy may also send an email to you at the email address you have provided. You may have a legal right to receive this notice in writing.'
                            )
                            ,OverViewListComponent(title: ' 10. NO RIGHTS OF THIRD PARTIES.', message:
                            'This Privacy Policy does not create rights enforceable by third parties or require disclosure of any personal information relating to users of the website.'
                            )
                            ,OverViewListComponent(title: '11. CHANGES TO THIS PRIVACY POLICY.', message:
                            'We will occasionally update this Privacy Policy. When we post changes to this Privacy Policy, we will revise the \'last updated\' date at the top of this Privacy Policy. We recommend that you check our website from time to time to inform yourself of any changes in this Privacy Policy or any of our other policies.'
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Contact Us For more information or questions about your use of our website, please contact us at: [support@JobsEasy.com].',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
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
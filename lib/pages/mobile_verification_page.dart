import 'package:butter_fly/pages/forgot_password_page.dart';
import 'package:butter_fly/pages/otp_verification_page.dart';
import 'package:butter_fly/request_models/auth_request_model.dart';
import 'package:butter_fly/utils/app_style.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:butter_fly/view_models/auth_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MobileVerificationPage extends StatefulWidget {
  const MobileVerificationPage({super.key});

  @override
  State<MobileVerificationPage> createState() => _MobileVerificationPageState();
}

class _MobileVerificationPageState extends State<MobileVerificationPage> {
  final authViewModel = Get.put(AuthViewModel());
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? _selectedItem = "+ 91";
  final List<String> _items = ['+ 91', '+ 92', '+ 93', '+ 94'];
  final TextEditingController editTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:
    SafeArea(top: true,
        child:
    Padding(
      padding: const EdgeInsets.all( 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(child: Image.asset("assets/images/app_logo_1.png",height: 150,width: 150)),
          Text(
            style: TextStyle(color: CustomColors.secondary,fontSize: 24,fontWeight: FontWeight.w700),"Login"
          ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                  style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w400),"Please confirm your country code and enteryour mobile number"
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Container(height: 50,decoration: AppStyles.grayBox,child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButton<String>(
                        hint: Text(style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w500),'+ 91'),
                        value: _selectedItem,
                        items: _items.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w500),item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedItem = newValue;
                          });
                        },
                        underline: SizedBox.shrink(),
                      ),
                    ),),Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(height: 50,decoration: AppStyles.grayBox,child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            controller: editTextController,
                            keyboardType: TextInputType.phone,
                            maxLength: 10,  // Set max length to 10 digits for a mobile number
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Mobile Number',
                              counterText: "",  // Removes the character count indicator
                            ),
                          ),
                        )),
                      ),
                    )
        
                  ],
                ),
              ),
            ),
            Obx(()=> authViewModel.getOtpNumberObserver.value.maybeWhen(
              loading: (data){
               return Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(height: 50,width: 50,child: Center(child: SizedBox(height: 30,width: 30,child: CircularProgressIndicator(color: CustomColors.primary,)))),
                 ],
               );
              },
                orElse: (){
              return GestureDetector(onTap: (){ if(editTextController.text.length == 10){
                authViewModel.performGetOtpNumber(GetOtpNumberRequestModel(mobileNumber: editTextController.text));
              }else{
                Get.snackbar('Oops.','Check Your Mobile Number', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
              }},child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'LOGIN',textAlign: TextAlign.center,)),));
            })),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end, // Aligns the text to the right
                children: [
                  Visibility(
                   visible: false,
                    child: GestureDetector(
                      onTap:(){
                        // Get.to(() => const ForgotPasswordPage());
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: CustomColors.secondary,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 2,width:double.infinity,color: CustomColors.gray,),
                Container(color:Colors.white,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(style: TextStyle(color: CustomColors.textColor,fontSize: 14,fontWeight: FontWeight.w500),'Or Login With',textAlign: TextAlign.center,),
                ))
              ],
            ),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                Container(width:MediaQuery.sizeOf(context).width*0.4,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.lightBlue,),
                child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),'FACEBOOK',textAlign: TextAlign.center,)) ),
                GestureDetector(
                  onTap: signInWithGoogle,
                  child: Container(width:MediaQuery.sizeOf(context).width*0.4,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
                    child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),'GOOGLE',textAlign: TextAlign.center,)),),
                )
        
              ]),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text:  TextSpan(
                      style: TextStyle(height: 1.3),
                      children: [
                        TextSpan(text:
                        'Don’t have an Account?', style: TextStyle(
                          color: CustomColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        )),
                        TextSpan(text:
                        ' Register here!', style:TextStyle(
                          fontFamily: 'Montserrat',
                          color: CustomColors.secondary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ))
                      ]),
                ),
              ],
            )
        ],
        ),
      ),
    )
    )
    );
  }


  Future<User?> signInWithGoogle() async {
    try {
      // Trigger the Google Sign-In flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return null; // The user canceled the sign-in
      }

      // Obtain the authentication details
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Create a new credential
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await _auth.signInWithCredential(credential);

      return userCredential.user;
    } catch (e) {
      print(e);
      return null;
    }
  }

}

import 'package:butter_fly/pages/home_page.dart';
import 'package:butter_fly/pages/job_details_entry_page.dart';
import 'package:butter_fly/request_models/auth_request_model.dart';
import 'package:butter_fly/utils/app_style.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../view_models/auth_view_model.dart';
import 'main_page.dart';


class OtpVerificationPage extends StatefulWidget {
  final String mobileNumber;
  final int? otp;
  const OtpVerificationPage({super.key,required this.mobileNumber,this.otp});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final authViewModel = Get.put(AuthViewModel());
  // final _firebase = FirebaseMessaging.instance;
  late String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        SafeArea(top: true,
            child:
            Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(onTap: (){
                      Get.back();
                    },child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,)),
                    const SizedBox(height: 20),
                    Center(child: Image.asset("assets/images/app_logo_1.png",height: 150,width: 150)),
                    Text(
                        style: TextStyle(color: CustomColors.secondary,fontSize: 24,fontWeight: FontWeight.w700),"OTP Verification"
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          style: TextStyle(color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w600),"OTP has been sent to you on your mobilenumber, please enter it below ${widget.otp}"
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: SizedBox(
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30.0),
                            child: PinCodeTextField(
                              appContext: context,
                              pastedTextStyle:  TextStyle(
                                color: CustomColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                              length:6,
                              obscureText: true,
                              obscuringCharacter: '*',
                              // obscuringWidget: const FlutterLogo(
                              //   size: 24,
                              // ),
                              blinkWhenObscuring: true,
                              animationType: AnimationType.fade,
                              validator: (v) {
                                if (v!.length < 3) {
                                  return "Invalid Otp";
                                } else {
                                  return null;
                                }
                              },
                              pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(5),
                                  fieldHeight: 40,
                                  fieldWidth: 35,
                                  activeFillColor: CustomColors.gray,
                                  selectedFillColor: CustomColors.gray,
                                  inactiveFillColor: CustomColors.gray,
                                  activeColor: CustomColors.gray,
                                  // disabledColor: CustomColors.textcolor, // Set the border color to black
                                  selectedColor: CustomColors.textColor, // Set the border color to black
                                  inactiveColor: CustomColors.gray,
                                  errorBorderColor:CustomColors.textColor
                              ),
                              cursorColor: Colors.black,
                              animationDuration: const Duration(milliseconds: 300),
                              enableActiveFill: true,
                              keyboardType: TextInputType.number,
                              boxShadows: const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  color: Colors.black12,
                                  blurRadius: 10,
                                )
                              ],
                              onCompleted: (v) {
                                debugPrint("Completed");
                              },
                              // onTap: () {
                              //   print("Pressed");
                              // },
                              onChanged: (value) {
                                debugPrint(value);
                                setState(() {
                                  currentText = value;
                                });
                              },
                              beforeTextPaste: (text) {
                                debugPrint("Allowing to paste $text");
                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Obx(()=> authViewModel.checkOtpNumberObserver.value.maybeWhen(
                        loading: (data){
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 50,width: 50,child: Center(child: SizedBox(height: 30,width: 30,child: CircularProgressIndicator(color: CustomColors.primary,)))),
                            ],
                          );
                        },
                        orElse: (){
                          return GestureDetector(onTap: (){ if(currentText.isNotEmpty && currentText.length==6){
                            authViewModel.performCheckOtpNumber(CheckOtpNumberRequestModel(mobileNumber:widget.mobileNumber ?? "", otp:currentText));
                          }
                          else{
                            Get.snackbar('Oops.','Otp Must Entered', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
                          }
                          },child: Container(width: double.infinity,height: 50,decoration: AppStyles.primaryButtonStyle,child: const Center(child: Text(style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),'VERIFY',textAlign: TextAlign.center,)),));
                        }))
                  ],
                ),
              ),
            )
        )
    );
  }
}


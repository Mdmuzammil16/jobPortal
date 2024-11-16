
import 'package:butter_fly/components/onboarding_component.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'mobile_verification_page.dart';


class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreens();
}

class _OnBoardingScreens  extends State<OnBoardingScreens> {
  List<String> itemList = [
    'assets/images/onboarding_image.png',
  ];
  List<String> textList = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. printing and typesetting industry.',
  ];
  List<String> buttonTextList = [
    'Next',
  ];
  late PageController _pageController;
  int _currentPage = 0;


  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    Get.offAll(()=>  const MobileVerificationPage());
    // if (_currentPage < 2) { // 2 represents the index of the last skippable page
    //   _pageController.animateToPage(
    //     _currentPage + 1,
    //     duration: const Duration(milliseconds: 300),
    //     curve: Curves.ease,
    //   );
    // }
    // else{
    //   Get.offAll(()=>  const MobileVerificationPage());
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SafeArea(
        top: true,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemCount: itemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return OnBoardingScreenComponent(image:itemList[index],text : textList[index]);
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(itemList.length,
                      (int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentPage == index ? CustomColors.textColor : CustomColors.primary,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        child:TextButton(onPressed:
                        (){
                          Get.offAll(()=>  const MobileVerificationPage());
                        }, child:  const Text( style: TextStyle(
                          color:Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),"Skip"),
                        )
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColors.primary
                        ),
                        child:
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextButton(onPressed:
                            _goToNextPage, child:  Text( style: const TextStyle(
                              color:Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),buttonTextList[_currentPage]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
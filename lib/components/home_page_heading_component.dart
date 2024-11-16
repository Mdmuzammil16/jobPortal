import 'package:butter_fly/components/search_job_bottom_sheet.dart';
import 'package:butter_fly/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_colors.dart';


class HomePageHeadingComponent extends StatelessWidget {
  final VoidCallback? notificationClick;
  const HomePageHeadingComponent({super.key,this.notificationClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: CustomColors.primary,
          ),
          child: Column(
            children: [
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: ClipOval(
                        child: Container(
                          color: CustomColors.gray,
                            width: 40,
                            height: 40,
                            child: Center(child: Image.asset('assets/images/profile.png',color: Colors.grey,width: 30,height: 30,))),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding:
                        EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                          children: [
                            Text(
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight:
                                  FontWeight.w600,
                                  fontStyle: FontStyle
                                      .normal,
                                ),
                                'Hello , Bunny'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight:
                                  FontWeight.w600,
                                  fontStyle: FontStyle
                                      .normal,
                                ),
                                 "Find your Great Job",overflow: TextOverflow.ellipsis,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: notificationClick,
                      child: Padding(
                          padding:
                          const EdgeInsets.all(12),
                          child: Image.asset(
                            color: Colors.white,
                            'assets/images/bell.png',
                            width: 25,
                            height: 25,
                            alignment: Alignment.center,
                          )),
                    )
                  ],
                ),
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Get.to(() => const SearchingPage());
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child:
                          Container(
                            height: 50,
                            decoration: AppStyles.grayBox,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Search ..',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: CustomColors.darkGray,
                                        fontWeight:FontWeight.w500),
                                  ),
                                  Image.asset("assets/images/search.png",color: Colors.black,width: 20,height: 20,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        showModalBottomSheet(isScrollControlled: true,context: context, builder: (context) {return const SearchJobBottomSheet();});
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(width: 50,height:50,decoration: AppStyles.grayBox,child: Center(child: Image.asset("assets/images/sliders.png",color: Colors.black,width: 20,height: 20,)),),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8,)
            ],
          ),
        )
      ],
    );
  }
}

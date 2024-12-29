import 'package:butter_fly/components/search_job_bottom_sheet.dart';
import 'package:butter_fly/utils/app_style.dart';
import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:butter_fly/view_models/job_details_view_model.dart';
import 'package:butter_fly/view_models/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../responce_models/user_response_model.dart';
import '../utils/custom_colors.dart';


class HomePageHeadingComponent extends StatefulWidget {
  final VoidCallback? notificationClick;
  const HomePageHeadingComponent({super.key,this.notificationClick});

  @override
  State<HomePageHeadingComponent> createState() => _HomePageHeadingComponentState();
}

class _HomePageHeadingComponentState extends State<HomePageHeadingComponent> {
  @override
  Widget build(BuildContext context) {
    final userViewModel = Get.put(UserViewModel());
    final jobDetailsViewModel = Get.put(JobDetailsViewModel());
    return Column(
      children: [
        StatefulWrapper(
          onInit: () async {

          },
          child: Container(
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
                      Expanded(
                        child: Padding(
                          padding:
                          const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                            children: [
                              Obx(() => userViewModel.fetchUserDetailsObserver.value.maybeWhen(
                                  success: (data) {
                                    final userData = (data as UserDetailsResponseModel).data;
                                    return Text(
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight:
                                          FontWeight.w500,
                                          fontStyle: FontStyle
                                              .normal,
                                        ),
                                        'Hello  '+ (userData?.name ?? ""));
                                  },
                                  orElse: () =>Text(
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight:
                                    FontWeight.w500,
                                    fontStyle: FontStyle
                                        .normal,
                                  ),
                                  'Hello'))
                                ,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight:
                                    FontWeight.w500,
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
                        onTap: widget.notificationClick,
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
                                    SizedBox(
                                      width: 200,
                                      height: 50,
                                      child: TextFormField(
                                          onChanged: (query){
                                            userViewModel.homePageSearchQuery.value = query;
                                          },
                                          style: TextStyle(
                                              color:CustomColors.textColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16
                                          ),
                                          decoration: const InputDecoration(
                                            counterText: '',
                                            hintText: 'Search ....',
                                            hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),
                                            border: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                          )
                                      ),
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
                          jobDetailsViewModel.performFetchApplyJobDetails();
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
          ),
        )
      ],
    );
  }
}

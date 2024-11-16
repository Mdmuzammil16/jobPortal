import 'package:butter_fly/components/second_heading_component.dart';
import 'package:butter_fly/pages/company_details_tab.dart';
import 'package:butter_fly/pages/reviews_tab.dart';
import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:butter_fly/view_models/auth_view_model.dart';
import 'package:butter_fly/view_models/job_details_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../responce_models/job_details_response_model.dart';
import '../utils/custom_colors.dart';
import 'description_tab.dart';

class JobDetailsOverviewPage extends StatefulWidget {
  final int id;
  const JobDetailsOverviewPage({super.key, required this.id});

  @override
  State<JobDetailsOverviewPage> createState() => _JobDetailsOverviewPageState();
}

class _JobDetailsOverviewPageState extends State<JobDetailsOverviewPage> {
  final jobDetailsViewModel = Get.put(JobDetailsViewModel());
  final List<String> myTabs = [
     'Description',
     'Company',
    'Reviews'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      StatefulWrapper(
        onInit: (){
          jobDetailsViewModel.performGetJobDetailsByJobIDObserver(widget.id.toString());
        },
        child: DefaultTabController(
          length: myTabs.length,
          child: SafeArea(
              top: true,
              child:
              Obx(() => jobDetailsViewModel.getJobDetailsByJobIDObserver.value.maybeWhen(
                loading: (loading){
                  return SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SizedBox(width: 50,height: 50,child: CircularProgressIndicator(color: CustomColors.primary,),)),);
                },
                  success: (data){
                    final  responseData = (data as JobDetailsResponseModel).data;
                    final jobDetailsDataModelList = JobDetailsModel.fromJson(responseData);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: double.infinity,child:
                        Stack(children: [
                          Column(children: [
                            Image.asset("assets/images/example.png",height: 120,width: double.infinity,fit: BoxFit.cover,),
                            Container(height: 100,width: double.infinity,color: Colors.white,)
                          ],),
                          Column(children: [
                            Container(height:60,child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(onTap:(){
                                  Get.back();
                                },child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,color: Colors.white,),
                                )),
                                Expanded(
                                  child: Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FontStyle.normal,
                                      ),""),
                                ),
                                GestureDetector(onTap: (){},child: Image.asset("assets/images/share.png",width: 20,height: 20,)),
                                GestureDetector(onTap:(){},child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Image.asset("assets/images/bookmark.png",width: 20,height: 20,),
                                )),
                              ],),),
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/example.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],)
                        ],),),
                        Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),jobDetailsDataModelList.getCompanies?.companyName ?? ""),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: CustomColors.darkGray,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                              ),jobDetailsDataModelList.getCategories?.categoryName ?? ""),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            decoration: BoxDecoration(borderRadius:
                            BorderRadius.circular(10),color: CustomColors.gray),
                            child: TabBar(
                              tabAlignment: TabAlignment.center,
                              isScrollable: true,
                              indicatorColor: CustomColors.primary,
                              splashFactory: NoSplash.splashFactory,
                              dividerColor:  Colors.transparent,
                              unselectedLabelColor: CustomColors.primary,
                              unselectedLabelStyle: TextStyle(
                                  color:CustomColors.primary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                              labelColor: Colors.white,
                              indicatorPadding: const EdgeInsets.symmetric(vertical: 3,horizontal: -20),
                              indicator: BoxDecoration(
                                color: CustomColors.primary,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              labelStyle: const TextStyle(
                                  color:  Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                              tabs: [
                                for (final tab in myTabs)
                                  Tab(
                                    child: Text(tab,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              DescriptionTab(),
                              CompanyDetailsTab(),
                              ReviewsTab()
                            ],
                          ),
                        ),
                        Container(color: Colors.white,height: 100,width: double.infinity,child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: CustomColors.primary
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: TextButton(onPressed:(){}, child:  const Text( style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),"Apply"),
                                ),
                              ),
                            ),
                          ),
                        ))
                      ],);
                  },
                  error: (error){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(onTap:(){
                          Get.back();
                        },child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,color: CustomColors.primary,),
                        )),
                        const Expanded(child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),"No Job Details Founded Please Try Again"),
                          ),
                        ),),
                      ],
                    );
                  },
                  orElse: (){
                    return SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SizedBox(width: 50,height: 50,child: CircularProgressIndicator(color: CustomColors.primary,),)),);
              })
              ),

          ),
        ),
      ),
    );
  }
}

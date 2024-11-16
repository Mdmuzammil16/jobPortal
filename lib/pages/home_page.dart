import 'package:butter_fly/components/home_page_heading_component.dart';
import 'package:butter_fly/pages/notification_page.dart';
import 'package:butter_fly/responce_models/job_details_response_model.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:butter_fly/view_models/job_details_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/job_details_component.dart';
import '../view_models/auth_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  final authViewModel = Get.put(AuthViewModel());
  final jobDetailsViewModel = Get.put(JobDetailsViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StatefulWrapper(
        onInit: (){
          jobDetailsViewModel.performGetAllJobs();
          jobDetailsViewModel.performGetPopularJobsData();
          jobDetailsViewModel.performGetRecomendedJobs();
          jobDetailsViewModel.performGetFeatureJobs();
        },
        child: SafeArea(
          top: true,
          child: Column(
            children: [
              HomePageHeadingComponent(notificationClick: (){
                Get.to(() => const NotificationPage());
              },),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Obx(()=>  jobDetailsViewModel.getAllJobsObserver.value.maybeWhen(
                            loading:(loading){
                              return Center(child: CircularProgressIndicator(color: CustomColors.primary));
                            } ,
                            success: (data){
                              final  responseData = (data as JobDetailsResponseModel).data as List<dynamic>;
                              final jobDetailsDataModelList = responseData.map((e) => JobDetailsModel.fromJson(e)).toList();
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              style: TextStyle(
                                                color: CustomColors.primary,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                              ),
                                              'All Jobs'),
                                          Text(
                                              style: TextStyle(
                                                color: CustomColors.secondary,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                              ),
                                              'See All')
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: jobDetailsDataModelList?.length ?? 0,
                                      itemBuilder: (BuildContext context, int index) {
                                        final dataModel = jobDetailsDataModelList?[index];
                                        return JobDetailsComponent(dataModel: dataModel);
                                      },
                                    ),
                                  )
                                ],
                              );
                            },
                            orElse: (){
                              return SizedBox();
                            })
                        ),
                        Obx(()=>  jobDetailsViewModel.getPopularJobsDataObserver.value.maybeWhen(
                            loading:(loading){
                              return Center(child: CircularProgressIndicator(color: CustomColors.primary));
                            } ,
                            success: (data){
                              final  responseData = (data as JobDetailsResponseModel).data as List<dynamic>;
                              final jobDetailsDataModelList = responseData.map((e) => JobDetailsModel.fromJson(e)).toList();
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              style: TextStyle(
                                                color: CustomColors.primary,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                              ),
                                              'Popular Jobs'),
                                          Text(
                                              style: TextStyle(
                                                color: CustomColors.secondary,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                              ),
                                              'See All')
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: jobDetailsDataModelList?.length ?? 0,
                                      itemBuilder: (BuildContext context, int index) {
                                        final dataModel = jobDetailsDataModelList?[index];
                                        return JobDetailsComponent(dataModel: dataModel);
                                      },
                                    ),
                                  )
                                ],
                              );
                            },
                            orElse: (){
                          return SizedBox();
                         })
                        ),
                        Obx(()=>  jobDetailsViewModel.getRecomendedJobsObserver.value.maybeWhen(
                            loading:(loading){
                              return Center(child: CircularProgressIndicator(color: CustomColors.primary));
                            } ,
                            success: (data){
                              final  responseData = (data as JobDetailsResponseModel).data as List<dynamic>;
                              final jobDetailsDataModelList = responseData.map((e) => JobDetailsModel.fromJson(e)).toList();
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              style: TextStyle(
                                                color: CustomColors.primary,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                              ),
                                              'Recommended Jobs'),
                                          Text(
                                              style: TextStyle(
                                                color: CustomColors.secondary,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                              ),
                                              'See All')
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: jobDetailsDataModelList?.length ?? 0,
                                      itemBuilder: (BuildContext context, int index) {
                                        final dataModel = jobDetailsDataModelList?[index];
                                        return JobDetailsComponent(dataModel: dataModel);
                                      },
                                    ),
                                  )
                                ],
                              );
                            },
                            orElse: (){
                              return SizedBox();
                            })
                        ),
                        Obx(()=>  jobDetailsViewModel.getFeatureJobsObserver.value.maybeWhen(
                            loading:(loading){
                              return Center(child: CircularProgressIndicator(color: CustomColors.primary));
                            } ,
                            success: (data){
                              final  responseData = (data as JobDetailsResponseModel).data as List<dynamic>;
                              final jobDetailsDataModelList = responseData.map((e) => JobDetailsModel.fromJson(e)).toList();
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              style: TextStyle(
                                                color: CustomColors.primary,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                              ),
                                              'Feature Jobs'),
                                          Text(
                                              style: TextStyle(
                                                color: CustomColors.secondary,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                              ),
                                              'See All')
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: jobDetailsDataModelList?.length ?? 0,
                                      itemBuilder: (BuildContext context, int index) {
                                        final dataModel = jobDetailsDataModelList?[index];
                                        return JobDetailsComponent(dataModel: dataModel);
                                      },
                                    ),
                                  )
                                ],
                              );
                            },
                            orElse: (){
                              return SizedBox();
                            })
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Search{
  final String image;
  final String name;

  Search({
    required this.image,
    required this.name,
  });
}
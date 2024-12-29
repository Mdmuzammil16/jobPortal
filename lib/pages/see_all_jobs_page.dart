import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/job_details_component.dart';
import '../components/second_heading_component.dart';
import '../responce_models/job_details_response_model.dart';
import '../view_models/job_details_view_model.dart';

class SeeAllJobsPage extends StatefulWidget {
  final String jobType;
  const SeeAllJobsPage({super.key, required this.jobType});

  @override
  State<SeeAllJobsPage> createState() => _SeeAllJobsPageState();
}

class _SeeAllJobsPageState extends State<SeeAllJobsPage> {

  final jobDetailsViewModel = Get.put(JobDetailsViewModel());

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){
        if(widget.jobType == "PopularJobs"){
          jobDetailsViewModel.performGetPopularJobsData();
        }
        else if(widget.jobType == "RecommendedJobs"){
          jobDetailsViewModel.performGetRecomendedJobs();
        }
        else if(widget.jobType == "FeatureJobs"){
          jobDetailsViewModel.performGetFeatureJobs();
        }
        else{
          jobDetailsViewModel.performGetAllJobs();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(top: true,child: Column(
          children: [
            SecondHeadingComponent(backPress: (){
              Get.back();
            },headingName: widget.jobType),
            Expanded(
              child: Obx(() {
                final observer = (widget.jobType == "popularJobs") ? jobDetailsViewModel.getPopularJobsDataObserver : (widget.jobType == "recommendedJobs") ? jobDetailsViewModel.getRecomendedJobsObserver : (widget.jobType == "featureJobs") ? jobDetailsViewModel.getFeatureJobsObserver : jobDetailsViewModel.getAllJobsObserver;
                return observer.value.maybeWhen(
                    loading: (loading) => const Center(child: SizedBox(width: 30,height: 30,child: CircularProgressIndicator(),)),
                    success: (data){
                      final  responseData = (data as JobDetailsResponseModel).data as List<dynamic>;
                      final jobDetailsDataModelList = responseData.map((e) => JobDetailsModel.fromJson(e)).toList();
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount:jobDetailsDataModelList.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            final dataModel = jobDetailsDataModelList[index];
                            return SizedBox(height: 200,width: double.infinity,child: JobDetailsComponent(jobType: widget.jobType,dataModel: dataModel));
                          },
                        ),
                      );
                    },
                    orElse: () => SizedBox());
              }
              ),
            ),
          ],
        )),),
    );
  }
}

import 'package:butter_fly/components/second_heading_component.dart';
import 'package:butter_fly/request_models/job_details_request_model.dart';
import 'package:butter_fly/utils/statefullwrapper.dart';
import 'package:butter_fly/view_models/job_details_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/job_details_component.dart';
import '../responce_models/job_details_response_model.dart';
import '../utils/custom_colors.dart';

class JobSearchPage extends StatefulWidget {
  final SearchJobsRequestModel? searchJobsRequestModel;
  const JobSearchPage({super.key, required this.searchJobsRequestModel});

  @override
  State<JobSearchPage> createState() => _JobSearchPageState();
}

class _JobSearchPageState extends State<JobSearchPage> {
  final jobDetailsViewModel = Get.put(JobDetailsViewModel());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: StatefulWrapper(
        onInit: (){
          // jobDetailsViewModel.performSearchJobs(widget.searchJobsRequestModel);
        },
        child: Scaffold(body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SecondHeadingComponent(backPress:(){
                Get.back();
              },headingName: "Search Jobs"),
              Expanded(
                child: Obx(() =>
                   jobDetailsViewModel.searchJobsObserver.value.maybeWhen(
                     error: (error){
                       return Center(child: SizedBox(width: 50,height: 50,child: CircularProgressIndicator(color: CustomColors.primary,)));
                     },
                       orElse: () =>  Center(child: SizedBox(width: 50,height: 50,child: CircularProgressIndicator(color: CustomColors.primary,))),
                  loading: (loading){
                         return Center(child: SizedBox(width: 50,height: 50,child: CircularProgressIndicator(color: CustomColors.primary,)));
                       },
                       success: (data){
                         final  responseData = (data as JobDetailsResponseModel).data as List<dynamic>;
                         final jobDetailsDataModelList = responseData.map((e) => JobDetailsModel.fromJson(e)).toList();
                         return Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10),
                           child: ListView.builder(
                             scrollDirection: Axis.vertical,
                             itemCount: jobDetailsDataModelList.length,
                             itemBuilder: (BuildContext context, int index) {
                               final modelData = jobDetailsDataModelList[index];
                               return  JobDetailsComponent(dataModel: modelData);
                             },
                           ),
                         );
                       })
                ),
              ),
            ],
          ),
        ),),
      ),
    );
  }
}

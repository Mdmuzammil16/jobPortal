import 'package:butter_fly/pages/job_details_overview_page.dart';
import 'package:butter_fly/request_models/job_details_request_model.dart';
import 'package:butter_fly/utils/app_style.dart';
import 'package:butter_fly/view_models/book_marks_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../responce_models/job_details_response_model.dart';
import '../utils/custom_colors.dart';
import '../utils/util.dart';

class JobDetailsComponent extends StatefulWidget {
  final String jobType;
  final JobDetailsModel? dataModel;
  const JobDetailsComponent({super.key,required this.dataModel, required this.jobType});

  @override
  State<JobDetailsComponent> createState() => _JobDetailsComponentState();
}

class _JobDetailsComponentState extends State<JobDetailsComponent> {
  final bookMarksViewModel = Get.put(BookMarksViewModel());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Get.to(() => JobDetailsOverviewPage(id: widget.dataModel?.id ?? 0));
        },
        child: IntrinsicWidth(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: widget.jobType == "allJobs" ? Colors.lightGreen :  widget.jobType == "popularJobs" ? Colors.lightBlueAccent :  widget.jobType == "recommendedJobs" ? Colors.redAccent :  Colors.orangeAccent ),
            child: Padding(
                padding: const EdgeInsets.only( left:10,top:8.0,bottom: 8),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/example.png",width: 70,height: 70,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 160,
                                    child: Text(
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign:TextAlign.justify,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                        ),widget.dataModel?.getCategories?.categoryName ?? ""),
                                  ),
                                    Obx(() => bookMarksViewModel.addToBookMarkObserver.value.maybeWhen(
                                      loading:(loading) => (loading == widget.dataModel?.id.toString()) == true ? SizedBox(width: 10,height: 10,child: CircularProgressIndicator()) : Image.asset("assets/images/bookmark.png",width: 20,height: 20,),
                                        success: (data){
                                          return (data == widget.dataModel?.id.toString()) == true ?  Image.asset("assets/images/bookmark.png",width: 20,height: 20,color: Colors.yellow) : GestureDetector(onTap: (){
                                            bookMarksViewModel.performAddToBookMark(AddToBookMarkRequestModel(jobId: widget.dataModel?.id.toString() ?? ""));
                                          },child: Image.asset("assets/images/bookmark.png",width: 20,height: 20,)) ;
                                        },
                                        orElse: () => GestureDetector(
                                            onTap: (){
                                              bookMarksViewModel.performAddToBookMark(AddToBookMarkRequestModel(jobId: widget.dataModel?.id.toString() ?? ""));
                                            },
                                            child: Image.asset("assets/images/bookmark.png",width: 20,height: 20,))))
                                ],
                              ),
                               Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: SizedBox(
                                  width: 200,
                                  child: Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign:TextAlign.justify,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                      ),widget.dataModel?.getCompanies?.companyName ?? ""),
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/images/star.png",width: 20,height: 20,),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                        textAlign:TextAlign.justify,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                        ),"4.5"),
                                  ),
                                  Container(height: 10,width: 1,color: Colors.grey,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                        textAlign:TextAlign.justify,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                        ),timeAgo(widget.dataModel?.createdAt ?? "")),
                                  )
                                ],
                              )
                            ],),
                          ),
                        )
                      ],
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign:TextAlign.justify,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),timeAgo(widget.dataModel?.createdAt ?? "")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Container(
                            decoration: AppStyles.grayBox,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  textAlign:TextAlign.justify,
                                  style: TextStyle(
                                    color: CustomColors.primary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                  ),widget.dataModel?.getJobTypes?.typeName ?? ''),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: AppStyles.grayBox,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  textAlign:TextAlign.justify,
                                  style: TextStyle(
                                    color: CustomColors.primary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                  ),widget.dataModel?.getExperienceLevels?.experienceLevelName ?? ''),
                            ),
                          )
                        ]),
                        const SizedBox(width: 10),
                        Container(decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                        ),child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              textAlign:TextAlign.justify,
                              style: TextStyle(
                                color: CustomColors.primary,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),"Just Now"),
                        ))
                      ],
                    )
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}

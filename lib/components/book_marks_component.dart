import 'package:butter_fly/components/custom_network_image.dart';
import 'package:butter_fly/pages/job_details_overview_page.dart';
import 'package:butter_fly/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../responce_models/book_marks_response_model.dart';
import '../responce_models/job_details_response_model.dart';
import '../utils/custom_colors.dart';
import '../utils/util.dart';

class BookMarksComponent extends StatefulWidget {
  final BookMarksModel? dataModel;
  const BookMarksComponent({super.key,required this.dataModel});

  @override
  State<BookMarksComponent> createState() => _BookMarksComponentState();
}

class _BookMarksComponentState extends State<BookMarksComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          // Get.to(() => JobDetailsOverviewPage(id: widget.dataModel?.id ?? 0));
        },
        child: IntrinsicWidth(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.lightGreen),
            child: Padding(
                padding: const EdgeInsets.only( left:10,top:8.0,bottom: 8),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 70,height: 70,child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CustomNetworkImage(imageUrl: widget.dataModel?.company?.companyImage ?? "",fit:BoxFit.cover,)),),
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
                                          ),widget.dataModel?.category ?? ""),
                                    ),
                                    // Image.asset("assets/images/bookmark.png",width: 20,height: 20,)
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
                                        ),widget.dataModel?.company?.companyName ?? ""),
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
                                          ),widget.dataModel?.experienceLevel ?? ""),
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
                          ),"${widget.dataModel?.salaryMonth ?? ""} - ${widget.dataModel?.salaryYear ?? ""}"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: (widget.dataModel?.jobTypes ?? List.empty()).map((item) {
                            return Container(
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
                                    ),item.jobType),
                              ),
                            );
                          }).toList(),
                        ),
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

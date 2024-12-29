import 'package:butter_fly/components/book_marks_component.dart';
import 'package:butter_fly/components/category_component.dart';
import 'package:butter_fly/components/empty_data_view.dart';
import 'package:butter_fly/responce_models/book_marks_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/job_details_component.dart';
import '../utils/custom_colors.dart';
import '../view_models/book_marks_view_model.dart';

class BookMarksPage extends StatefulWidget {
  final bool? backBtnVisible;
  const BookMarksPage({super.key,this.backBtnVisible});

  @override
  State<BookMarksPage> createState() => _BookMarksPageState();
}

class _BookMarksPageState extends State<BookMarksPage> {
  final bookMarksViewModel = Get.put(BookMarksViewModel());
  
  @override
  void initState() {
    super.initState();
    bookMarksViewModel.performFetchBookMarks(); 
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            widget.backBtnVisible == true ?
            Container(height:60,color: CustomColors.primary,child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(onTap:(){
                  Get.back();
                },child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset("assets/images/arrow_left.png",width: 20,height: 20,color: Colors.white,),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),"Book Marks"),
                )
              ],),) :Container(color: CustomColors.primary,height:60,width:double.infinity,child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign:TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal,
                    ),"BookMarks"),
              ),
            ),),
            Expanded(
              child: Obx(() => bookMarksViewModel.fetchBookMarksObserver.value.maybeWhen(
                loading: (loading) => const Center(child: SizedBox(width: 30,height: 30,child: CircularProgressIndicator(),)),
                success: (data){
                  final responseData = (data as BookMarksResponseModel).data;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: responseData?.bookmarks?.isEmpty == true ? const Center(child: EmptyDataView(text: "No BookMarks Found"),) : ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount:responseData?.bookmarks?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        final bookMark =  responseData?.bookmarks?[index];
                        return SizedBox(height: 200,width:double.infinity,child: BookMarksComponent(dataModel: bookMark));
                      },
                    ),
                  );
                },
                  orElse: () =>  SizedBox())
              ),
            ),
          ],
        ),
      ),),
    );
  }
}

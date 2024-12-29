import 'package:butter_fly/components/title_description.dart';
import 'package:butter_fly/responce_models/category_response_model.dart';
import 'package:butter_fly/responce_models/job_details_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../responce_models/book_marks_response_model.dart';
import '../utils/custom_colors.dart';

class DescriptionTab extends StatefulWidget {
  final Company? company;
  const DescriptionTab({super.key, required this.company});

  @override
  State<DescriptionTab> createState() => _DescriptionTabState();
}

class _DescriptionTabState extends State<DescriptionTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(widget.company?.description ?? "",style: TextStyle(
        color: CustomColors.primary,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      )),
            // ListView.builder(
            //   scrollDirection: Axis.vertical,
            //   itemCount: 1,
            //   itemBuilder: (BuildContext context, int index) {
            //     return const TitleDescription(title: "About the Job", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.");
            //   },
            // )
    ));
  }
}

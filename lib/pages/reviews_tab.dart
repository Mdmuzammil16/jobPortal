import 'package:butter_fly/components/rating_bar_component.dart';
import 'package:butter_fly/components/review_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class ReviewsTab extends StatefulWidget {
  const ReviewsTab({super.key});

  @override
  State<ReviewsTab> createState() => _ReviewsTabState();
}

class _ReviewsTabState extends State<ReviewsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                ),"Overall Rating"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return RatingBarComponent(rating: index+1);
                },
              ),
            ),
            Text(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                ),"Reviews"),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return ReviewComponent();
              },
            ),
          ],
        ),
      ),
    ));
  }
}

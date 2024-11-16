import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../utils/custom_colors.dart';

class ReviewComponent extends StatefulWidget {
  const ReviewComponent({super.key});

  @override
  State<ReviewComponent> createState() => _ReviewComponentState();
}

class _ReviewComponentState extends State<ReviewComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,boxShadow: [
          BoxShadow(
            color: CustomColors.gray,
            spreadRadius: 3,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/example.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: CustomColors.primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                  ),"Esther Howard"),
                            ),
                              SizedBox(
                                height: 10, // Adjust the height as desired
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 12, // Set the size of each rating item
                                  itemBuilder: (context, _) => Image.asset(
                                    'assets/images/star.png',
                                    width: 15, // Adjust item width here
                                    height: 15, // Adjust item height here
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            ),"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
                      ),
                    ],),
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}

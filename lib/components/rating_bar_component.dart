import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../utils/custom_colors.dart';

class RatingBarComponent extends StatefulWidget {
  final double rating;
  const RatingBarComponent({super.key, required this.rating});

  @override
  State<RatingBarComponent> createState() => _RatingBarComponentState();
}

class _RatingBarComponentState extends State<RatingBarComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Text(
              style: TextStyle(
                color: CustomColors.textColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),widget.rating.toString()),
        ),
        SizedBox(
          height: 20, // Adjust the height as desired
          child: RatingBar.builder(
            initialRating: widget.rating,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 20, // Set the size of each rating item
            itemBuilder: (context, _) => Image.asset(
              'assets/images/star.png',
              width: 20, // Adjust item width here
              height: 20, // Adjust item height here
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        )
      ],),
    );
  }
}

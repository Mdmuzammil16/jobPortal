import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class DetailsComponent extends StatefulWidget {
  final String image;
  final String text;
  const DetailsComponent({super.key, required this.image, required this.text});

  @override
  State<DetailsComponent> createState() => _DetailsComponentState();
}

class _DetailsComponentState extends State<DetailsComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset(widget.image,width: 20,height:20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.7,
            child: Text(
                style: TextStyle(
                  color: CustomColors.textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),widget.text),
          ),
        ),
      ],),
    );
  }
}

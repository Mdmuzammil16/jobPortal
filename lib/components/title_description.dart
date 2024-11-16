import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleDescription extends StatefulWidget {
  final String title;
  final String description;
  const TitleDescription({super.key, required this.title, required this.description});

  @override
  State<TitleDescription> createState() => _TitleDescriptionState();
}

class _TitleDescriptionState extends State<TitleDescription> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),widget.title),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),widget.description),
          )
        ],
      ),
    );
  }
}

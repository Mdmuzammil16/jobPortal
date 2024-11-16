import 'package:butter_fly/components/title_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionTab extends StatefulWidget {
  const DescriptionTab({super.key});

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
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const TitleDescription(title: "About the Job", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.");
        },
      ),
    ));
  }
}

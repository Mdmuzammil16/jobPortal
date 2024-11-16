import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/job_details_component.dart';
import '../utils/custom_colors.dart';

class BookMarksPage extends StatefulWidget {
  const BookMarksPage({super.key});

  @override
  State<BookMarksPage> createState() => _BookMarksPageState();
}

class _BookMarksPageState extends State<BookMarksPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(color: CustomColors.primary,height:60,width:double.infinity,child: Center(
              child: const Padding(
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const JobDetailsComponent(dataModel: null);
                  },
                ),
              ),
            ),
          ],
        ),
      ),),
    );
  }
}

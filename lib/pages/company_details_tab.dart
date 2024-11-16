import 'package:butter_fly/components/details_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/title_description.dart';
import '../utils/custom_colors.dart';

class CompanyDetailsTab extends StatefulWidget {
  const CompanyDetailsTab({super.key});

  @override
  State<CompanyDetailsTab> createState() => _CompanyDetailsTabState();
}

class _CompanyDetailsTabState extends State<CompanyDetailsTab> {

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
                ),"Hotel Over View"),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return const DetailsComponent(image: "assets/images/map.png", text: "1-90/B/C/5, plot 52/p, 3rd Floor, Vittal Rao Nagar,Hitech City, Madhapur, Hyderabad, Telangana 500081");
              },
            ),
            Text(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                ),"Hotel Images"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: CustomColors.gray)),child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Image.asset("assets/images/example.png",width: 100,height: 100,),
                    ));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

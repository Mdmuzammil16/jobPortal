import 'package:butter_fly/components/details_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_network_image.dart';
import '../components/title_description.dart';
import '../responce_models/job_details_response_model.dart';
import '../utils/custom_colors.dart';

class CompanyDetailsTab extends StatefulWidget {
  final Company? company;
  const CompanyDetailsTab({super.key, required this.company});

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
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),"Hotel Over View"),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return DetailsComponent(image: "assets/images/map.png", text: widget.company?.address ?? "1-90/B/C/5, plot 52/p, 3rd Floor, Vittal Rao Nagar,Hitech City, Madhapur, Hyderabad, Telangana 500081");
              },
            ),
            SizedBox(height: 30),
            Text(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),"Hotel Images"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: CustomColors.gray)),child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: widget.company?.companyImage?.isEmpty == true ? Image.asset("assets/images/example.png",width: 100,height: 100,) : CustomNetworkImage(
                    imageUrl: widget.company?.companyImage ?? "",
                      fit: BoxFit.cover,
                    ),
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

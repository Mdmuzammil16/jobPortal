import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../responce_models/category_response_model.dart';
import 'custom_network_image.dart';

class CategoryComponent extends StatefulWidget {
  final CategoryModel? categoryModel;
  const CategoryComponent({super.key, required this.categoryModel});

  @override
  State<CategoryComponent> createState() => _CategoryComponentState();
}

class _CategoryComponentState extends State<CategoryComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(decoration:BoxDecoration(
        color: Colors.white,
          boxShadow: [
        BoxShadow(
          color: CustomColors.gray,
          spreadRadius: 3,
          blurRadius: 2,
          offset: const Offset(0, 3),
        ),
      ],borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: CustomColors.gray)),child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Same as in the BoxDecoration
                  child: CustomNetworkImage(
                    imageUrl: widget.categoryModel?.categoryImage ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
            ,
            Text(
                textAlign:TextAlign.justify,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),widget.categoryModel?.categoryName??""),
            Text(
                textAlign:TextAlign.justify,
                style: TextStyle(
                  color: CustomColors.darkGray,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),widget.categoryModel?.openingsText ?? "")

          ],
        ),
      )),
    );
  }
}

import 'package:butter_fly/components/category_component.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(top: true,child:
    SizedBox(width:double.infinity,height:double.infinity,child: Column(
      children: [
        Container(color: CustomColors.primary,height:60,width:double.infinity,child: const Center(
          child:  Padding(
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
                ),"Category"),
          ),
        ),),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2, // Number of columns
              itemCount:10, // Total number of items
              itemBuilder:(BuildContext context, int index) {
                return const CategoryComponent();},
              mainAxisSpacing: 4.0, // Space between columns
              crossAxisSpacing: 4.0,
              staggeredTileBuilder: (int index) => const StaggeredTile.fit(1), // Space between rows
            ),
          ),
        ),
      ],
    ))),);
  }
}

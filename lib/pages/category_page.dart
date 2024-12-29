import 'package:butter_fly/components/category_component.dart';
import 'package:butter_fly/responce_models/category_response_model.dart';
import 'package:butter_fly/responce_models/job_details_response_model.dart';
import 'package:butter_fly/utils/custom_colors.dart';
import 'package:butter_fly/view_models/category_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../request_models/job_details_request_model.dart';
import 'job_search_page.dart';


class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  final categoryViewModel = Get.put(CategoryViewModel());


  @override
  void initState() {
    super.initState();
    categoryViewModel.performFetchCategories();
  }


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
          child: Obx(() => categoryViewModel.fetchCategoriesObserver.value.maybeWhen(
            loading: (loading) => const Center(child: SizedBox(width: 30,height: 30,child: CircularProgressIndicator(),)),
              success: (data){
              final responseData = (data as CategoryResponseModel).data;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2, // Number of columns
                  itemCount:responseData?.categories?.length ?? 0, // Total number of items
                  itemBuilder:(BuildContext context, int index) {
                    final category =  responseData?.categories?[index];
                    return GestureDetector(
                        onTap: (){
                          Get.to(() => JobSearchPage(searchJobsRequestModel: SearchJobsRequestModel(jobTypeId: "1", categoryId: category?.id.toString(), countryId: "0", experienceLevelId: "1", minSalary: "1", maxSalary: "1")));
                        },
                        child: CategoryComponent(categoryModel: category));
                    },
                  mainAxisSpacing: 4.0, // Space between columns
                  crossAxisSpacing: 4.0,
                  staggeredTileBuilder: (int index) => const StaggeredTile.fit(1), // Space between rows
                ),
              );
              },
              orElse: () => SizedBox())
          ),
        ),
      ],
    ))),);
  }
}

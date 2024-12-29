import 'package:butter_fly/responce_models/auth_response_model.dart';
import 'package:butter_fly/view_models/auth_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../utils/app_style.dart';
import '../utils/custom_colors.dart';

class ExperienceDataComponent extends StatefulWidget {
  final ExperienceData? data;
  final VoidCallback onClick;
  const ExperienceDataComponent({super.key, required this.data, required this.onClick});

  @override
  State<ExperienceDataComponent> createState() => _ExperienceDataComponentState();
}

class _ExperienceDataComponentState extends State<ExperienceDataComponent> {
  final authViewModel = Get.put(AuthViewModel());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onClick();
        setState(() {
          authViewModel.selectedOption.value = widget.data?.id ?? 0;
        });
      },
      child: Container(decoration: AppStyles.grayBox,child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Row(children: [
          Expanded(
            child: SizedBox(
              width: 150,
              child: Text(
                  style: TextStyle(overflow: TextOverflow.ellipsis,color: CustomColors.textColor,fontSize: 16,fontWeight: FontWeight.w500),widget.data?.name??""
              ),
            ),
          ),
          Obx(()=> Image.asset((authViewModel.selectedOption.value == (widget.data?.id ?? 0)) ? "assets/images/check_circle.png" : "assets/images/circle.png",height: 20,width: 20)),
        ],),
      ),),
    );
  }
}

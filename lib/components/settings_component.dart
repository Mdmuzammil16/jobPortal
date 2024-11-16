import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class SettingsComponent extends StatefulWidget {
  final String image;
  final String name;
  final VoidCallback? onPress;
  const SettingsComponent({super.key,required this.image,required this.name, required this.onPress});

  @override
  State<SettingsComponent> createState() => _SettingsComponentState();
}

class _SettingsComponentState extends State<SettingsComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Image.asset(widget.image,width: 20,height:20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: Text(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),widget.name),
              ),],),
          ),
          Container(color: CustomColors.darkGray,height: 1,width: double.infinity,),
        ],
      ),
    );
  }
}

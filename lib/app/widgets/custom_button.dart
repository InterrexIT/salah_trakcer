
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_tracker/app/data/all_colors.dart';
import 'package:salah_tracker/app/data/all_styles.dart';
class CustomButton extends StatelessWidget {
  String title;
  VoidCallback onTap;
  CustomButton({required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AllColors.secondaryColor,
            AllColors.primaryColor,
          ],
        ),
      ),
      child: Center(child: Text(title,style: AllStyles.titleTextStyle)),
      
    );
  }
}

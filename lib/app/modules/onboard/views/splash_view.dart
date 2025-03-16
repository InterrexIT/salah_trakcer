import 'package:flutter/material.dart';
import 'package:salah_tracker/app/data/all_colors.dart';
import 'package:svg_flutter/svg.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
            AllColors.secondaryColor,
            AllColors.primaryColor,
            ],
          ),
        ),
        child: Center(
          child: SvgPicture.asset('assets/images/logo.svg'),
        ),
      ),

    );
  }
}

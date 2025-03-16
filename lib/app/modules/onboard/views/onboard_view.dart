import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:salah_tracker/app/data/all_colors.dart';
import 'package:svg_flutter/svg.dart';

import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  List<PageViewModel> pages = [
    PageViewModel(
      image: SvgPicture.asset('assets/images/onboard_one.svg'),
      title: 'Stay Connected to Your Faith.',
      body: 'Track your prayers, read duas, and stay connected to your spiritual journey.',

    ),
    PageViewModel(
      image: SvgPicture.asset('assets/images/onboard_two.svg'),
      title: 'All-in-One Prayer Companion.',
      body: 'Qibla direction, Azan alerts, and Quran recitation at your fingertips.',
    ),
    PageViewModel(
      image: SvgPicture.asset('assets/images/onboard_three.svg'),
      title: 'Never Miss a Prayer!',
      body: 'Set reminders, follow the Ramadan calendar, and stay consistent.',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: pages,
      showDoneButton: true,
      showSkipButton: true,
      showNextButton: true,
      next: Text('Next'),
      done: Text('Done'),
      // done: TextButton(
      //   onPressed: () {},
      //   child: Text(
      //     'Done',
      //     style: TextStyle(color: AllColors.whiteColor),
      //   ),
      //   style: TextButton.styleFrom(
      //       backgroundColor: AllColors.primaryColor.withOpacity(0.7)),
      // ),
          skip: Text('Skip'),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
      onDone: () {},
      onSkip: () {},
    ));
  }
}

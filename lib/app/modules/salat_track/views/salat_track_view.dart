import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salah_tracker/app/data/all_colors.dart';

import '../controllers/salat_track_controller.dart';

class SalatTrackView extends GetView<SalatTrackController> {
  const SalatTrackView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AllColors.primaryColor, AllColors.secondaryColor], // Define your gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            leading: Icon(Icons.arrow_back,color:AllColors.whiteColor),
            title: Text("Salat Tracker",style: TextStyle(
              fontFamily: 'Cairo',
              color: AllColors.whiteColor
            )),
            backgroundColor: Colors.transparent, // Make AppBar transparent
            elevation: 0, // Remove shadow
          ),
        ),

      ),
      body: Column(
        children: [
           Container(
             height: 80.0,
             color: AllColors.primaryColor.withOpacity(0.2),
             child: DatePicker(
               DateTime.now(),
               initialSelectedDate: DateTime.now(),
               selectionColor: Colors.black,
               selectedTextColor: Colors.white,
               dateTextStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'Cairo'),
               dayTextStyle: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: 'Cairo'),
               monthTextStyle: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold,fontFamily: 'Cairo'),
               onDateChange: (date) {
                 // setState(() {
                 //   _selectedValue = date;
                 // });
               },
             ),
           )
        ]
      )
    );
  }
}

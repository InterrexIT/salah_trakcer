import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salah_tracker/app/data/all_colors.dart';
import 'package:salah_tracker/app/data/all_styles.dart';
import 'package:svg_flutter/svg.dart';

import '../controllers/dua_collection_controller.dart';

class DuaCollectionView extends GetView<DuaCollectionController> {
  const DuaCollectionView({super.key});
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
            title: Text("Dua Collections",style: TextStyle(
                fontFamily: 'Cairo',
                color: AllColors.whiteColor
            )),
            backgroundColor: Colors.transparent, // Make AppBar transparent
            elevation: 0, // Remove shadow
          ),
        ),

      ),
      body: Padding(padding: EdgeInsets.all(12.0),
      child: Column(
        children: [
          Card(
            color: AllColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0,bottom: 6.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: AllColors.primaryColor.withOpacity(0.2),
                  child: SvgPicture.asset('assets/images/morning_dua.svg'),
                ),
                title: Text('Morning Dua',style: AllStyles.titleTextStyle.copyWith(
                  color: AllColors.blackColor
                )),
                trailing: SvgPicture.asset('assets/images/arrow-right.svg'),
              ),
            ),
          ),

          Card(
            color: AllColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0,bottom: 6.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: AllColors.primaryColor.withOpacity(0.2),
                  child: SvgPicture.asset('assets/images/evening_dua.svg'),
                ),
                title: Text('Evening Dua',style: AllStyles.titleTextStyle.copyWith(
                    color: AllColors.blackColor
                )),
                trailing: SvgPicture.asset('assets/images/arrow-right.svg'),
              ),
            ),
          ),

          Card(
            color: AllColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0,bottom: 6.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: AllColors.primaryColor.withOpacity(0.2),
                  child: SvgPicture.asset('assets/images/before_sleep.svg'),
                ),
                title: Text('Before Sleep',style: AllStyles.titleTextStyle.copyWith(
                    color: AllColors.blackColor
                )),
                trailing: SvgPicture.asset('assets/images/arrow-right.svg'),
              ),
            ),
          ),

          Card(
            color: AllColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0,bottom: 6.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: AllColors.primaryColor.withOpacity(0.2),
                  child: SvgPicture.asset('assets/images/praise-allah.svg'),
                ),
                title: Text('Praise Allah',style: AllStyles.titleTextStyle.copyWith(
                    color: AllColors.blackColor
                )),
                trailing: SvgPicture.asset('assets/images/arrow-right.svg'),
              ),
            ),
          ),


          Card(
            color: AllColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0,bottom: 6.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: AllColors.primaryColor.withOpacity(0.2),
                  child: SvgPicture.asset('assets/images/istigfar.svg'),
                ),
                title: Text('Istigfar',style: AllStyles.titleTextStyle.copyWith(
                    color: AllColors.blackColor
                )),
                trailing: SvgPicture.asset('assets/images/arrow-right.svg'),
              ),
            ),
          ),

          Card(
            color: AllColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0,bottom: 6.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: AllColors.primaryColor.withOpacity(0.2),
                  child: SvgPicture.asset('assets/images/quranic.svg'),
                ),
                title: Text('Quranic Duas',style: AllStyles.titleTextStyle.copyWith(
                    color: AllColors.blackColor
                )),
                trailing: SvgPicture.asset('assets/images/arrow-right.svg'),
              ),
            ),
          )



        ]
      ),
      )
    );
  }
}

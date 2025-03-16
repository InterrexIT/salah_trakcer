import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salah_tracker/app/data/all_colors.dart';
import 'package:salah_tracker/app/data/all_styles.dart';

import '../controllers/ramadan_calender_controller.dart';

class RamadanCalenderView extends GetView<RamadanCalenderController> {
  const RamadanCalenderView({super.key});
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
            title: Text("Ramadan Calendar 2025",style: TextStyle(
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
         Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Text('Ramadan',style: TextStyle(
                      fontFamily: 'Cairo',
                      color: AllColors.greyColor,
                      fontSize: 14.0
                  ))),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Center(
                      child: Text('Sahri Tim',style: TextStyle(
                          fontFamily: 'Cairo',
                          color: AllColors.greyColor,
                          fontSize: 14.0
                      )),
                    ),
                  )),

              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Center(
                      child: Text('Iftar Time',style: TextStyle(
                          fontFamily: 'Cairo',
                          color: AllColors.greyColor,
                          fontSize: 14.0
                      )),
                    ),
                  ))
            ],
          ),
          SizedBox(height: 7.0),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                return _ramadanView();
                }),
          )
        ]
      ),

      )
    );
  }

  _ramadanView(){
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
                color: AllColors.primaryColor,
                width: 1.2
            )
        ),
        child: Row(
          children: [
            Expanded(
                flex:1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Fajar',style: AllStyles.titleTextStyle.copyWith(
                      color: AllColors.blackColor
                  )),
                )),

            Expanded(
                flex:1,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: AllColors.primaryColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child:  Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('05:19',
                                    textAlign: TextAlign.center,
                                    style: AllStyles.titleTextStyle.copyWith(
                                      color: AllColors.primaryColor,
                                    )),
                              )
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                                width: 60.0,
                                decoration: BoxDecoration(
                                  color: AllColors.primaryColor.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('05:19',
                                      textAlign: TextAlign.center,
                                      style: AllStyles.titleTextStyle.copyWith(
                                        color: AllColors.primaryColor,
                                      )),
                                )
                            ),
                          ),




                        ]
                    )
                ))
          ],
        ),
      ),
    );
  }
}

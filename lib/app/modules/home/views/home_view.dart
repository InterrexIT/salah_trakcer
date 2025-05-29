import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salah_tracker/app/data/all_colors.dart';
import 'package:salah_tracker/app/data/all_styles.dart';
import 'package:svg_flutter/svg.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
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
            title: Text("Interrex Salat Tracker",style: TextStyle(
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
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
               height: 220.0,
                width: Get.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/mountain.png'),
                    fit: BoxFit.none, // Keeps the original size of the image
                    alignment: Alignment.bottomCenter,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      AllColors.primaryColor,
                      AllColors.secondaryColor,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('فَاذْكُرُونِي أَذْكُرْكُم',style: AllStyles.headingTextStyle.copyWith(
                        fontSize: 20.0
                      ),
                      ),
                      SizedBox(height: 8.0),
                      Text('''Remember Me, and I will remember you. (Surah Al-Baqarah 2:152)''',style: AllStyles.titleTextStyle.copyWith(

                      ),
                      )
                    ]
                  ),
                ),
              ),
              Positioned(
              top: 150.0,
                left: 20.0,
                right: 20.0,
                child: Container(
                  padding: EdgeInsets.all(14.0),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5.0),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black.withOpacity(0.3),
                       spreadRadius:1.0,
                       blurRadius: 8.0,
                       offset: Offset(0, 3.0),
                     ),
                   ],
                 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text('Features',style: AllStyles.titleTextStyle.copyWith(
                       color: AllColors.blackColor
                     )),

                      Divider(
                        color: AllColors.greyColor.withOpacity(0.3)
                      ),

                      SizedBox(
                        height: 160.0,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height:65.0,
                                    width: 65.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          AllColors.secondaryColor,
                                          AllColors.primaryColor,
                                        ],
                                      ),
                                    ),
                                    child: SvgPicture.asset('assets/images/salat_tracker.svg'),
                                  ),

                                  Text('Salat Tracker',style: AllStyles.headingTextStyle.copyWith(
                                    color: AllColors.blackColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.normal
                                  )),

                                  Text('Stay consistent in your prayers',
                                      textAlign: TextAlign.center,
                                      style: AllStyles.titleTextStyle.copyWith(
                                      color: AllColors.blackColor.withOpacity(0.6),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.normal
                                  )),

                                ]
                              ),
                            ),
                            Container(
                              height: double.infinity, // Thickness of the divider
                              color: AllColors.greyColor.withOpacity(0.3),
                              width: 1.0,// Color of the divider// Full width
                              margin: EdgeInsets.symmetric(vertical: 10), // Add spacing
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:65.0,
                                      width: 65.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.0),
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            AllColors.secondaryColor,
                                            AllColors.primaryColor,
                                          ],
                                        ),
                                      ),
                                      child: SvgPicture.asset('assets/images/salat_tracker.svg'),
                                    ),

                                    Text('Salat Tracker',style: AllStyles.headingTextStyle.copyWith(
                                        color: AllColors.blackColor,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal
                                    )),

                                    Text('Stay consistent in your prayers',
                                        textAlign: TextAlign.center,
                                        style: AllStyles.titleTextStyle.copyWith(
                                            color: AllColors.blackColor.withOpacity(0.6),
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.normal
                                        )),
                                  ]
                              ),
                            )
                          ]
                        ),
                      ),
                      Divider(
                          color: AllColors.greyColor.withOpacity(0.3)
                      ),
                      SizedBox(
                        height: 160.0,
                        child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:65.0,
                                        width: 65.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50.0),
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              AllColors.secondaryColor,
                                              AllColors.primaryColor,
                                            ],
                                          ),
                                        ),
                                        child: SvgPicture.asset('assets/images/salat_tracker.svg'),
                                      ),

                                      Text('Salat Tracker',style: AllStyles.headingTextStyle.copyWith(
                                          color: AllColors.blackColor,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal
                                      )),

                                      Text('Stay consistent in your prayers',
                                          textAlign: TextAlign.center,
                                          style: AllStyles.titleTextStyle.copyWith(
                                              color: AllColors.blackColor.withOpacity(0.6),
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.normal
                                          )),

                                    ]
                                ),
                              ),
                              Container(
                                height: double.infinity, // Thickness of the divider
                                color: AllColors.greyColor.withOpacity(0.3),
                                width: 1.0,// Color of the divider// Full width
                                margin: EdgeInsets.symmetric(vertical: 10), // Add spacing
                              ),
                              Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:65.0,
                                        width: 65.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50.0),
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              AllColors.secondaryColor,
                                              AllColors.primaryColor,
                                            ],
                                          ),
                                        ),
                                        child: SvgPicture.asset('assets/images/salat_tracker.svg'),
                                      ),

                                      Text('Salat Tracker',style: AllStyles.headingTextStyle.copyWith(
                                          color: AllColors.blackColor,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal
                                      )),

                                      Text('Stay consistent in your prayers',
                                          textAlign: TextAlign.center,
                                          style: AllStyles.titleTextStyle.copyWith(
                                              color: AllColors.blackColor.withOpacity(0.6),
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.normal
                                          )),
                                    ]
                                ),
                              )
                            ]
                        ),
                      ),
                    ]
                  ),
                ),
              )
            ]
          )
          
        ]
      )
    );
  }
}

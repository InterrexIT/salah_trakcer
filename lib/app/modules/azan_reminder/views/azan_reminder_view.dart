import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salah_tracker/app/data/all_colors.dart';
import 'package:salah_tracker/app/data/all_styles.dart';

import '../controllers/azan_reminder_controller.dart';

class AzanReminderView extends StatefulWidget {
   AzanReminderView({super.key});

  @override
  State<AzanReminderView> createState() => _AzanReminderViewState();
}

class _AzanReminderViewState extends State<AzanReminderView> {
   bool fajarCheckBox=false;

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
            title: Text("Azan Reminder",style: TextStyle(
                fontFamily: 'Cairo',
                color: AllColors.whiteColor
            )),
            backgroundColor: Colors.transparent, // Make AppBar transparent
            elevation: 0, // Remove shadow
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Waqt',style: TextStyle(
                    fontFamily: 'Cairo',
                    color: AllColors.greyColor,
                    fontSize: 14.0
                  ))),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('Azan Time',style: TextStyle(
                            fontFamily: 'Cairo',
                            color: AllColors.greyColor,
                            fontSize: 14.0
                        )),
                      ))
                ],
              ),
            ),
            SizedBox(height: 10.0),

            Container(
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
                            SizedBox(width: 15.0),
                            SizedBox(
                              height: 20, // Adjust height as needed
                              width: 20,  // Adjust width as needed
                              child: Checkbox(
                                value: fajarCheckBox,
                                activeColor: Colors.green,
                                onChanged: (value) {
                                  setState(() {
                                    fajarCheckBox = !fajarCheckBox;
                                  });
                                },
                              ),
                            ),

                            SizedBox(width: 5.0),
                            Text('Alert',style: AllStyles.titleTextStyle.copyWith(color: AllColors.blackColor))

                          ]
                        )
                      ))
                ],
              ),
            ),

            SizedBox(height: 15.0),

            Container(
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
                                SizedBox(width: 15.0),
                                SizedBox(
                                  height: 20, // Adjust height as needed
                                  width: 20,  // Adjust width as needed
                                  child: Checkbox(
                                    value: fajarCheckBox,
                                    activeColor: Colors.green,
                                    onChanged: (value) {
                                      setState(() {
                                        fajarCheckBox = !fajarCheckBox;
                                      });
                                    },
                                  ),
                                ),

                                SizedBox(width: 5.0),
                                Text('Alert',style: AllStyles.titleTextStyle.copyWith(color: AllColors.blackColor))

                              ]
                          )
                      ))
                ],
              ),
            ),

            SizedBox(height: 15.0),

            Container(
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
                                SizedBox(width: 15.0),
                                SizedBox(
                                  height: 20, // Adjust height as needed
                                  width: 20,  // Adjust width as needed
                                  child: Checkbox(
                                    value: fajarCheckBox,
                                    activeColor: Colors.green,
                                    onChanged: (value) {
                                      setState(() {
                                        fajarCheckBox = !fajarCheckBox;
                                      });
                                    },
                                  ),
                                ),

                                SizedBox(width: 5.0),
                                Text('Alert',style: AllStyles.titleTextStyle.copyWith(color: AllColors.blackColor))

                              ]
                          )
                      ))
                ],
              ),
            ),
            SizedBox(height: 15.0),

            Container(
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
                                SizedBox(width: 15.0),
                                SizedBox(
                                  height: 20, // Adjust height as needed
                                  width: 20,  // Adjust width as needed
                                  child: Checkbox(
                                    value: fajarCheckBox,
                                    activeColor: Colors.green,
                                    onChanged: (value) {
                                      setState(() {
                                        fajarCheckBox = !fajarCheckBox;
                                      });
                                    },
                                  ),
                                ),

                                SizedBox(width: 5.0),
                                Text('Alert',style: AllStyles.titleTextStyle.copyWith(color: AllColors.blackColor))

                              ]
                          )
                      ))
                ],
              ),
            ),
            SizedBox(height: 15.0),

            Container(
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
                                SizedBox(width: 15.0),
                                SizedBox(
                                  height: 20, // Adjust height as needed
                                  width: 20,  // Adjust width as needed
                                  child: Checkbox(
                                    value: fajarCheckBox,
                                    activeColor: Colors.green,
                                    onChanged: (value) {
                                      setState(() {
                                        fajarCheckBox = !fajarCheckBox;
                                      });
                                    },
                                  ),
                                ),

                                SizedBox(width: 5.0),
                                Text('Alert',style: AllStyles.titleTextStyle.copyWith(color: AllColors.blackColor))

                              ]
                          )
                      ))
                ],
              ),
            )

          ],
        ),
      )
    );
  }
}

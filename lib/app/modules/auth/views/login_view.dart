import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salah_tracker/app/data/all_colors.dart';
import 'package:salah_tracker/app/data/all_styles.dart';
import 'package:salah_tracker/app/widgets/custom_button.dart';
import 'package:svg_flutter/svg.dart';

import '../controllers/auth_controller.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isSecure=true;

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width ,
          child: Column(
            children: [
              Container(
                height: 240.0,
                width: size.width,
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0,right: 20.0,left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/logo_horizontal.svg'),
                      SizedBox(height: 15.0),
                      Text('Sign in to your Account',style: AllStyles.headingTextStyle),
                      SizedBox(height: 30.0),
                      Row(
                        children: [
                          Text('Don’t have an account?',style: AllStyles.subtitleTextStyle),
                          SizedBox(width: 7.0),
                          Text('SignUp',style: AllStyles.subtitleTextStyle)

                        ]
                      )
                    ]
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(
                top: 30.0,
                bottom: 30.0,
                left: 20.0,
                right: 20.0
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.5,bottom: 3.0),
                    child: Text('Email',style: AllStyles.textFieldLabelTextStyle),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.redAccent.withOpacity(0.5), width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder( // Border when not focused
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: AllColors.secondaryColor,width: 1.5),
                      ),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        color: AllColors.greyColor,
                        fontSize: 18.0,
                        fontFamily: 'Cairo'
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.5,bottom: 3.0),
                    child: Text('Password',style: AllStyles.textFieldLabelTextStyle),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.redAccent.withOpacity(0.5), width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder( // Border when not focused
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder( // Border when focused
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: AllColors.secondaryColor, width: 1.5),
                      ),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        color: AllColors.greyColor,
                        fontSize: 18.0,
                        fontFamily: 'Cairo',
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isSecure = !isSecure;
                          });
                        },
                        child: Icon(isSecure ? Icons.remove_red_eye_rounded : Icons.remove_red_eye_outlined),
                      ),
                    ),
                    obscureText: isSecure,
                  ),

                  SizedBox(height: 30.0),
                  
                  
                  CustomButton(title: 'LOGIN', onTap: (){}),
                  SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Divider(color: Colors.grey.withOpacity(0.5),height: 1.0)),
                      Expanded(child: Center(child: Text('Or login with',style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontFamily: 'Cairo',
                      )))),
                      Expanded(child: Divider(color: Colors.grey.withOpacity(0.5),height: 1.0))
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Expanded(child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            width: 1.0,
                              color: Colors.grey.withOpacity(0.5)
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/images/google.svg',height: 25.0,width: 25.0,fit: BoxFit.cover),
                            SizedBox(width: 10.0),
                            Text('Google',style: AllStyles.headingTextStyle.copyWith(
                              color: AllColors.blackColor,
                              fontSize: 18.0
                            ))
                          ]
                        ),
                      )),
                      SizedBox(width: 20.0),
                      Expanded(child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                width: 1.0,
                                color: Colors.grey.withOpacity(0.5)
                            )
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/facebook.svg',height: 25.0,width: 25.0,fit: BoxFit.cover),
                              SizedBox(width: 10.0),
                              Text('Facebook',style: AllStyles.headingTextStyle.copyWith(
                                  color: AllColors.blackColor,
                                  fontSize: 18.0
                              ))
                            ]
                        ),
                      )),
                    ]
                  ),

                  SizedBox(height: 20.0),
                  RichText(
                    textAlign: TextAlign.center, // Ensures proper alignment
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Cairo',
                        color: Colors.grey, // Default color
                      ),
                      children: [
                        TextSpan(text: 'By signing up, you agree to the '),
                        TextSpan(
                          text: 'Terms of Service ',
                          style: TextStyle(color: AllColors.blackColor),
                        ),
                        TextSpan(text: 'and '),
                        TextSpan(
                          text: 'Data Processing Agreement',
                          style: TextStyle(color: AllColors.blackColor),
                        ),
                      ],
                    ),
                  )

                ]
              ),
              )
            ]
          ),
        ),
      )
    );
  }
}

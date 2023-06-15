import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainzima/Files/Intro/signup/verificationpage.dart';
import 'package:mainzima/Files/Intro/signup/widgets/customs.dart';
import 'package:mainzima/Files/Intro/signup/widgets/verify.dart';
import 'package:mainzima/Files/Intro/signup/widgets/verify2.dart';

import '../../Constants/src/colors.dart';
import 'logic.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final logic = Get.put(SignupLogic());
  final state = Get.find<SignupLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              ListTile(
                leading: Text(
                  'First time login',
                  style: GoogleFonts.actor(
                      fontSize: 27, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Logging in for the first time? Zima would need to verify your new \n account.',
                style: GoogleFonts.actor(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Whats my number?',
                style: GoogleFonts.actor(color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 50.h,
                  child: NumberField(),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  const Verify4(),
                  SizedBox(
                    width: 120.w,
                  ),
                  const Verify1(),
                ],
              ),
              SizedBox(
                height: 30.w,
              ),
              Center(
                child: InkWell(
                  radius: 2.r,
                  splashColor: Colors.transparent,
                  onTap: () => Get.to(const OTPscreen()),
                  child: Text(
                    'Sign up with email',
                    style: GoogleFonts.actor(
                        color: DiceColors.dice2, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/services.dart';
import 'package:mainzima/Files/Constants/src/DiceFonts.dart';

import '../../Constants/const_imports.dart';

class OTPscreen extends StatelessWidget {
  const OTPscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const SizedBox(),
          title: Text(
            'OTP Verification',
            style: GoogleFonts.actor(fontSize: 19.sp, color: Colors.black38),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.05.h,
                ),
                Text(
                  'OTP Verification',
                  style: DiceTextStyle.Heading1,
                ),
                const Text(
                  'We sent a code to +234 *** *** ** 90',
                  style: DiceTextStyle.astyle,
                ),
                buildTimer(),
                SizedBox(
                  height: 12.h,
                ),
                const OtpForm(),
                SizedBox(
                  height: Get.height * 0.01.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didnt get the Otp ?',
                      style: DiceTextStyle.caption,
                    ),
                    InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {},
                        child: Text(
                          'Resend',
                          style: GoogleFonts.actor(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/src/colors.dart';
import '../../Navigation/NavigationBar.dart';
import '../signup/widgets/ProfileTextfields.dart';
import '../signup/widgets/otpdec.dart';
import 'logic.dart';

class Profile_setupPage extends StatelessWidget {
  Profile_setupPage({Key? key}) : super(key: key);

  final logic = Get.put(Profile_setupLogic());
  final state = Get.find<Profile_setupLogic>().state;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            ListTile(
              leading: Text(
                'Almost done!',
                style: GoogleFonts.actor(
                    fontSize: 33, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  'You are one step closer to completing your zima account,'
                  '\nComplete by entering the required information. ',
                  style: GoogleFonts.actor(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: Colors.black38),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 139.w,
                ),
                Stack(children: [
                  CircleAvatar(
                    backgroundColor: DiceColors.dice2,
                    radius: 39.r,
                  ),
                  const Positioned(
                    left: 54,
                    bottom: 10,
                    child: CircleAvatar(
                      backgroundColor: DiceColors.dice5,
                      radius: 12,
                      child: Icon(
                        Icons.edit,
                        size: 16,
                      ),
                    ),
                  ),
                ])
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w),
              child: const NameField(
                hinttext: '  Username (Required)',
                helpertext: 'Enter your name',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w),
              child: const EmailFiled(
                hinttext: '              zima@gmail.com',
                helpertext: 'Enter your email address',
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Zima will send a confirmation message to your email address.'
                '\nVerify the confirmation to strengthen your account.',
                style: GoogleFonts.actor(fontSize: 12,),textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: Get.height * 0.02.h,
            ),
            InkWell(
              onTap: () {
                Get.to(const DiceNavBar());
              },
              splashColor: Colors.transparent,
              radius: 3.r,
              child: const Proceede(),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainzima/Files/Constants/src/colors.dart';
import 'package:mainzima/Files/Screens/screen3/vcast/view.dart';

import '../../Constants/src/DiceFonts.dart';
import 'CustomWidgets/Types.dart';
import 'audp_o_d/view.dart';
import 'logic.dart';

class Screen3Page extends StatelessWidget {
  Screen3Page({Key? key}) : super(key: key);

  final logic = Get.put(Screen3Logic());
  final state = Get
      .find<Screen3Logic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 300.w,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Text(
            'Podcast',
            style: DiceTextStyle.Heading1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: Text(
                'Cast Type',
                style: GoogleFonts.inter(fontWeight: FontWeight.w500),
              ),
            ),
            InkWell(
                onTap: () => AudpODPage(),
                child: const Tyes(
                  name: 'Audio Podcast',
                  colors: DiceColors.dice6,
                  fontcolors: Colors.white,
                )),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () => VcastPage(),
              child: const Tyes(
                name: 'Video Podcast',
                colors: DiceColors.dice4,
                fontcolors: Colors.black,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            // The Horizontal list of channels
            ListTile(
              leading: Text('Avalible Channels',
                style: GoogleFonts.inter(fontWeight: FontWeight.w500),),
            ),
             const Row(
              children: [

              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: DiceColors.dice2,
        elevation: 0,
        child: const Icon(Icons.movie_creation_sharp),
      ),
    );
  }
}

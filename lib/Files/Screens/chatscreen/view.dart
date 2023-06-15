import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainzima/Files/Constants/src/colors.dart';

import '../dicehome/Models/Models.dart';
import 'logic.dart';

class ChatscreenPage extends StatelessWidget {
  ChatscreenPage({Key? key, required this.mods}) : super(key: key);
  final HomeMods mods;
  final logic = Get.put(ChatscreenLogic());
  final state = Get.find<ChatscreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Padding(
              padding: EdgeInsets.only(bottom: 19, right: 30, top: 5),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: DiceColors.dice2,
              ),
            ),
            toolbarHeight: 78,
            backgroundColor: Colors.white,
            flexibleSpace: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 30.h),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(mods.image),
                    ),
                  ),
                  title: Text(
                    mods.chatname,
                    style: GoogleFonts.actor(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 5.r,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        'Online',
                        style: GoogleFonts.actor(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  trailing: const SizedBox(
                    width: 110,
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.phone_fill,color: DiceColors.dice2,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(
                          CupertinoIcons.video_camera_solid,color: DiceColors.dice2,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(
                          Icons.more_vert, color: DiceColors.dice2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([]))
        ],
      ),
    );
  }
}

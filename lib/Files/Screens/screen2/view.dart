import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Constants/src/DiceFonts.dart';
import '../../Constants/src/colors.dart';
import '../dicehome/widget/tabBar.dart';
import 'Tabs/all_calls/view.dart';
import 'Tabs/missed_calls/view.dart';
import 'logic.dart';

class CallLogPage extends StatefulWidget {
  CallLogPage({Key? key}) : super(key: key);

  @override
  State<CallLogPage> createState() => _CallLogPageState();
}

class _CallLogPageState extends State<CallLogPage>
    with TickerProviderStateMixin {
  final logic = Get.put(Screen2Logic());

  final state = Get.find<Screen2Logic>().state;

  @override
  Widget build(BuildContext context) {
    final _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 300.w,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              'Call logs',
              style: DiceTextStyle.Heading1,
            ),
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(70.h),
              child: SizedBox(
                height: 70.h,
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        splashBorderRadius: BorderRadius.zero,
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 20.w, right: 20.w),
                        labelColor: DiceColors.dice2,
                        unselectedLabelColor: Colors.grey,
                        controller: _tabController,
                        indicator: CircularIndicator(
                            color: DiceColors.dice2, radius: 4.r),
                        tabs: const [
                          Tab(
                            text: "Outgoing Calls",
                          ),
                          Tab(text: "Missed Calls"),
                        ]),
                  ),
                ),
              ))),
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        height: Get.height,
        child: TabBarView(controller: _tabController, children: [
          All_callsPage(),
          Missed_callsPage(),
        ]),
      ),
    );
  }
}

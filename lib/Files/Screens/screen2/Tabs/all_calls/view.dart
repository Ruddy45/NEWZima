import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../Constants/src/DiceFonts.dart';
import 'Custom Widgets/Call Log.dart';
import 'Models.dart';
import 'logic.dart';

class All_callsPage extends StatelessWidget {
  All_callsPage({Key? key}) : super(key: key);

  final logic = Get.put(All_callsLogic());
  final state = Get.find<All_callsLogic>().state;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CallLog(),
            SizedBox(
              height: 20,
            ),
            FutureBuilder<List<Calls>>(
              future: logic.getdata(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else {
                  final data = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.only(right: 12.w, bottom: 10.h),
                    itemCount: data.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 80,
                        width: Get.width,
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(snapshot.data![index].image),
                              ),
                              title: Text(snapshot.data![index].name, style: DiceTextStyle.subheading,),
                              trailing: const Icon(Icons.call_made, color: Colors.green,size: 15,),
                              subtitle: Text(DateTimeFormat.format(DateTime.now(),format: 'D, M j, H:i')),
                            ),

                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

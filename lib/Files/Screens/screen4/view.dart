import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Screen4Page extends StatelessWidget {
  Screen4Page({Key? key}) : super(key: key);

  final logic = Get.put(Screen4Logic());
  final state = Get.find<Screen4Logic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

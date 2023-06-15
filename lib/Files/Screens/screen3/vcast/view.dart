import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class VcastPage extends StatelessWidget {
  VcastPage({Key? key}) : super(key: key);

  final logic = Get.put(VcastLogic());
  final state = Get.find<VcastLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

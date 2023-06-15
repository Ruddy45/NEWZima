import 'package:get/get.dart';

import 'Models.dart';
import 'state.dart';

class All_callsLogic extends GetxController {
  final All_callsState state = All_callsState();

  Future<List<Calls>> getdata() async {
    List<Calls> callMods = [
      Calls(
        image: 'assest/G5.jpeg',
        name: 'VillaBros',
      ),
      Calls(
        image: 'assest/T10.jpeg',
        name: 'Baron Menhaden',
      ),
      Calls(
        image: 'assest/T6.jpeg',
        name: 'Corn Man',
      ),
      Calls(
        image: 'assest/T5.jpeg',
        name: 'Develper Linko',
      ),
      Calls(
        image: 'assest/T9.jpeg',
        name: 'Insta Coco',
      ),
      Calls(
        image: 'assest/T8.jpeg',
        name: 'Zendaya Reels',
      ),
      Calls(
        image: 'assest/T11.jpeg',
        name: 'Jessy Reels',
      ),
    ];
    return callMods;
  }
}

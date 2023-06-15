import 'package:get/get.dart';

import 'Models.dart';
import 'state.dart';

class Missed_callsLogic extends GetxController {
  final Missed_callsState state = Missed_callsState();

  Future<List<Missed>> getdata() async {
    List<Missed> missedMods = [
      Missed(name: 'Baron', image: 'assest/G3.jpeg'),
      Missed(name: 'Stice', image: 'assest/G8.jpeg'),
      Missed(name: 'Victor', image: 'assest/G2.jpeg'),
      Missed(name: 'FavourlT', image: 'assest/G5.jpeg'),
      Missed(name: 'Luke', image: 'assest/G1.jpeg'),
      Missed(name: 'VillaBros', image: 'assest/G5.jpeg'),
      Missed(name: 'ifunanya', image: 'assest/G9.jpeg'),
      Missed(name: 'Onyekajims', image: 'assest/G10.jpeg'),
      Missed(name: 'Oscar', image: 'assest/G4.jpeg'),
      Missed(name: 'Timmy', image: 'assest/G4.jpeg'),
      Missed(name: 'Greg', image: 'assest/G4.jpeg'),
    ];
    return missedMods;
  }
}

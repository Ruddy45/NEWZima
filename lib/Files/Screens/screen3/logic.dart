import 'package:get/get.dart';

import 'Models.dart';
import 'state.dart';

class Screen3Logic extends GetxController {
  final Screen3State state = Screen3State();

  Future<List<Podcast>> retriveinfo() async {
    List<Podcast> podcast = [
      Podcast(
          title: 'Next Big Things',
          status: 'Live',
          about: 'Economy.Religion.Society',
          hostimage: '',
          hostname: 'Kevin Martens',
          description:
              'A very brief talk about some of the worlds biggest problems and some compact new surrounding the chnages in the society'),

    ];
    return retriveinfo();
  }
}

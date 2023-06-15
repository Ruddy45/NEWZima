import 'package:get/get.dart';

import 'Models/Models.dart';
import 'Models/storyMods.dart';
import 'state.dart';

class DicehomeLogic extends GetxController {
  final DicehomeState state = DicehomeState();

  Future<List<StoryMdos>> fetchData() async {
    List<StoryMdos> storyMdos = [
      StoryMdos(name: 'Baron', image: 'assest/G3.jpeg'),
      StoryMdos(name: 'Stice', image: 'assest/G8.jpeg'),
      StoryMdos(name: 'Mike', image: 'assest/G7.jpeg'),
      StoryMdos(name: 'Victor', image: 'assest/G2.jpeg'),
      StoryMdos(name: 'FavourlT', image: 'assest/G5.jpeg'),
      StoryMdos(name: 'onyekajims', image: 'assest/G10.jpeg'),
      StoryMdos(name: 'ifunanya', image: 'assest/G9.jpeg'),
      StoryMdos(name: 'Luke', image: 'assest/G1.jpeg'),
      StoryMdos(name: 'CornMan', image: 'assest/G4.jpeg'),
      StoryMdos(name: 'VillaBros', image: 'assest/G5.jpeg'),
    ];
    return storyMdos;
  }

  Future<List<HomeMods>> fetchChasts() async {
    List<HomeMods> mods = [
      HomeMods(
        image: 'assest/T10.jpeg',
        chatname: 'Baron Menhaden',
        massage: 'My boys will be meeting by 10:23pm',
      ),
      HomeMods(
        image: 'assest/T1.jpeg',
        chatname: 'Unfortunate Cause',
        massage: 'I tried calling your phone come on',
      ),
      HomeMods(
        image: 'assest/T6.jpeg',
        chatname: 'Corn Man',
        massage: 'Hey Ruddy, we have a new batch for you',
      ),
      HomeMods(
        image: 'assest/T5.jpeg',
        chatname: 'Develper Linko',
        massage: 'Everytime we keep trying to improve the quality',
      ),
      HomeMods(
        image: 'assest/T9.jpeg',
        chatname: 'Insta Coco',
        massage: 'Hey, i am having a House Party by noon be there',
      ),
      HomeMods(
        image: 'assest/T2.jpeg',
        chatname: 'Vila Brothers',
        massage: 'Ruddy, can you send us the last vernier of italy?',
      ),
      HomeMods(
        image: 'assest/T4.jpeg',
        chatname: 'Ella Victoria',
        massage: 'its always like this with you',
      ),
      HomeMods(
        image: 'assest/T3.jpeg',
        chatname: 'Gym Rat',
        massage: 'Brooo!, i did a 3000 lifts and 4000 reps!!!!!',
      ),
      HomeMods(
        image: 'assest/T8.jpeg',
        chatname: 'Zendaya Reels',
        massage: 'How is the design for the Company coming?',
      ),
      HomeMods(
        image: 'assest/T7.jpeg',
        chatname: 'Levi Ackerman',
        massage: 'New season out here bruve you got to watch this',
      ),
      HomeMods(
        image: 'assest/T11.jpeg',
        chatname: 'Jessy Reels',
        massage: 'I saw have your feeback ready',
      ),
      HomeMods(
        image: 'assest/T12.jpeg',
        chatname: 'Monk Tau',
        massage: 'The next meditation session will be with Chang lee',
      ),
      HomeMods(
        image: 'assest/T13.jpeg',
        chatname: 'Kevin Louie V',
        massage: 'You coming to the studio today?',
      ),
      HomeMods(
        image: 'assest/T14.jpeg',
        chatname: 'Kevin Hart',
        massage: 'I bought a hawk, form africa!!!!',
      ),
    ];
    return mods;
  }
}

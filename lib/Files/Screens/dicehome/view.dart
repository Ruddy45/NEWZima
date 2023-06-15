
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Constants/src/DiceFonts.dart';
import '../../Constants/src/colors.dart';
import '../chatscreen/view.dart';
import 'Models/Models.dart';
import 'Models/storyMods.dart';
import 'logic.dart';

class DicehomePage extends StatefulWidget {
  const DicehomePage({Key? key}) : super(key: key);

  @override
  State<DicehomePage> createState() => _DicehomePageState();
}

class _DicehomePageState extends State<DicehomePage>
    with TickerProviderStateMixin {
  final logic = Get.put(DicehomeLogic());

  final state = Get.find<DicehomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            pinned: true,
            leadingWidth: 300,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Text(
                'Zima',
                style: DiceTextStyle.Heading1,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: DiceColors.dice2,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: DiceColors.dice2,
                  )),
            ],
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(100),
                child: SizedBox(
                  height: 100,
                  child: FutureBuilder<List<StoryMdos>>(
                    future: logic.fetchData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else {
                        final data = snapshot.data!;
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(snapshot
                                          .data![index]
                                          .image) // Display the index or add an image
                                      ),
                                ),
                                Text(
                                  snapshot.data![index].name,
                                  style: DiceTextStyle.small1,
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              leading: Text(
                'Chats',
                style: DiceTextStyle.Heading2,
              ),
            ),
            FutureBuilder<List<HomeMods>>(
              future: logic.fetchChasts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else {
                  final data = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.only(right: 12.w, bottom: 10),
                    itemCount: data.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {
                          Get.to(ChatscreenPage(
                            mods: snapshot.data![index],
                          ));
                        },
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage(snapshot.data![index].image),
                        ),
                        title: Text(
                          snapshot.data![index].chatname,
                          style: DiceTextStyle.subheading,
                        ),
                        subtitle: Text(
                          snapshot.data![index].massage,
                          style: DiceTextStyle.caption,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
                        trailing: const Icon(Icons.done_rounded,color: Colors.green,),
                      );
                    },
                  );
                }
              },
            ),
          ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: DiceColors.dice2,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

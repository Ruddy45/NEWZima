
import 'package:flutter/material.dart';

import '../../../Constants/src/colors.dart';

class StoryLine extends StatelessWidget {
  const StoryLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 36,
      backgroundColor: DiceColors.dice2,
    );
  }
}

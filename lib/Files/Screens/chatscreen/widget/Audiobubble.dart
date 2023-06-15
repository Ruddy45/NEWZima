import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Constants/src/DiceFonts.dart';
import '../../../Constants/src/colors.dart';

class AudioBubble extends StatelessWidget {
  const AudioBubble({Key? key}) : super(key: key);
// Temporary information
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 55,
      decoration: BoxDecoration(color: DiceColors.dice5,borderRadius: BorderRadius.circular(23),),
      child:  Center(child: Row(
        children: [
          SizedBox(width: 10.w,),
          const Text('00:00',style: DiceTextStyle.astyle,),
          const SizedBox(width: 159,),
          const CircleAvatar(radius: 19,
            backgroundColor: Colors.white,
            child: Icon(Icons.play_arrow_rounded,color: Colors.black,),
          ),
        ],
      )),
    );
  }
}

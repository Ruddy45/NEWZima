import 'package:google_fonts/google_fonts.dart';
import 'package:mainzima/Files/Constants/const_imports.dart';
import 'package:mainzima/Files/Constants/src/colors.dart';

class CallLog extends StatelessWidget {
  const CallLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 70,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: DiceColors.dice2.withOpacity(.6)),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: DiceColors.dice2,
              child: Icon(
                Icons.qr_code_scanner,
                color: Colors.black,
              ),
            ),
            title: Text(
              'Create a call code',
              style:
                  GoogleFonts.actor(fontSize: 19, fontWeight: FontWeight.w700),
            ),
            subtitle: Text('Share a code for your Zimcalls',
                style: GoogleFonts.actor(
                    fontSize: 12, fontWeight: FontWeight.w100)),
          )),
    );
  }
}

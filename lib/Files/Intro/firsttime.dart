import 'package:mainzima/Files/Constants/src/colors.dart';
import 'package:mainzima/Files/Intro/signup/view.dart';
import '../Constants/const_imports.dart';
import 'Terms.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.1.h,
            ),
            const Image(image: AssetImage('assest/3ds.png')),
            SizedBox(
              height: Get.height * 0.1.h,
            ),
            Center(
                child: Text(
              'Welcome to Zima',
              style: GoogleFonts.actor(
                  fontSize: 30.sp, fontWeight: FontWeight.w600),
            )),
            SizedBox(height: 12.h),
            Text(
              'Read our Terms and Conditions below. Tap Agree and Continue to accept the\n'
              'Terms and Conditions ',
              style: GoogleFonts.actor(
                  fontSize: 12.sp, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 17.h,
            ),
            InkWell(
                onTap: () => Terms(),
                child: Text(
                  'Terms and Condition',
                  style: GoogleFonts.actor(fontSize: 14, color: Colors.blue),
                )),
            SizedBox(
              height: 26.h,
            ),
            InkWell(
              splashColor: Colors.transparent,
              onTap: () =>
                  Get.to(SignupPage(), transition: Transition.leftToRight),
              child: Container(
                width: 300.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: DiceColors.dice2),
                child: Center(
                    child: Text(
                  'Agree and continue',
                  style: GoogleFonts.actor(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

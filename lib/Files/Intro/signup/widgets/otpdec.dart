import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';

import '../../../Constants/const_imports.dart';
import '../../../Constants/src/colors.dart';
import '../../profile_setup/view.dart';

/// These are the input decorations for the pincodes
final otpinptdeco = InputDecoration(
  border: outlineInputBorder(),
  contentPadding: const EdgeInsets.symmetric(vertical: 16),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
);

/// This is the output decorations for the pincodes
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: const BorderSide(color: Colors.black));
}

/// Custom PINcODE FIELD AND functionality

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode _2focusNode;
  late FocusNode _3focusNode;
  late FocusNode _4focusNode;
  late Timer timer;
  double seconds = 8;

  @override
  void initState() {
    super.initState();
    _2focusNode = FocusNode();
    _3focusNode = FocusNode();
    _4focusNode = FocusNode();
    beginCountdown();
  }

  void beginCountdown() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (seconds == 0) {
          timer.cancel();
          Get.showSnackbar(const GetSnackBar(
            margin: EdgeInsets.only(left: 12, right: 12),
            icon: Icon(
              Icons.done_all,
              color: Colors.white,
            ),
            title: "Verification Successful",
            backgroundColor: Colors.green,
            borderRadius: 15,
            message: "Great! your account has beeen successfully verified",
            dismissDirection: DismissDirection.horizontal,
            isDismissible: true,
            duration: Duration(seconds: 2),
            animationDuration: Duration(seconds: 2),
            snackPosition: SnackPosition.TOP,
          ));
          Get.to(Profile_setupPage(),
              transition: Transition.leftToRightWithFade);
        } else {
          seconds--;
        }
      });
    });
  }

  @override
  void dispose() {
    _2focusNode.dispose();
    _3focusNode.dispose();
    _4focusNode.dispose();
    timer.cancel();
    super.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 55.w,
                child: TextFormField(
                  autofocus: true,
                  onChanged: (value) {
                    nextField(value, _2focusNode);
                  },
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: otpinptdeco,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
              SizedBox(
                width: 55.sp,
                child: TextFormField(
                  focusNode: _2focusNode,
                  onChanged: (value) {
                    nextField(value, _3focusNode);
                  },
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: otpinptdeco,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
              SizedBox(
                width: 55.w,
                child: TextFormField(
                  focusNode: _3focusNode,
                  onChanged: (value) {
                    nextField(value, _4focusNode);
                  },
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: otpinptdeco,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
              SizedBox(
                width: 55.w,
                child: TextFormField(
                  focusNode: _4focusNode,
                  onChanged: (value) {
                    _4focusNode.unfocus();
                  },
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: otpinptdeco,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.15.h,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  if (timer.isActive == true) {
                    return Center(
                        child: ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                        child: Container(
                          height: Get.height,
                          width: Get.width,
                          color: Colors.black38,
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: DiceColors.dice2,
                            ),
                          ),
                        ),
                      ),
                    ));
                  } else {
                    if (kDebugMode) {
                      print('Processing......');
                    }
                  }
                  return const Text('Compromisde');
                },
              );
            },
            child: Proceede(),
          ),
        ],
      ),
    );
  }
}

class Proceede extends StatelessWidget {
  const Proceede({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 50.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          color: DiceColors.dice5),
      child: Center(
        child: Text(
          'Proceed',
          style: GoogleFonts.actor(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

/// Custom countdown handler for pincode
Row buildTimer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('This code will expire in '),
      TweenAnimationBuilder(
        tween: Tween(begin: 30.0, end: 0),
        duration: const Duration(seconds: 20),
        builder: (context, value, child) => Text(
          '00:${value.toInt()}',
          style: GoogleFonts.inter(color: DiceColors.dice3),
        ),
        onEnd: () {},
      )
    ],
  );
}

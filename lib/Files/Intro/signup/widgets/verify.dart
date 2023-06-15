
import '../../../Constants/const_imports.dart';

class Verify1 extends StatelessWidget {
  const Verify1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: Container(
                height: 270,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                        height: 100.h,
                        width: 200.w,
                        child: const ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: Image(
                              image: AssetImage(
                                  'assest/phone.jpeg')),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 90.h,
                        width: 200.w,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Text(
                            'Please wait! Zima is sending you an automatic call, '
                                'dont decline  or pick the call. Zima will automatically verify '
                                'your account.',
                            style: GoogleFonts.actor(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.transparent),
        child: Center(
          child: Text(
            'Verify by Call',
            style: GoogleFonts.actor(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Colors.black.withOpacity(.5)),
          ),
        ),
      ),
    );
  }
}
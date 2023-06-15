import '../../../Constants/const_imports.dart';
import '../../../Constants/src/colors.dart';

class EmailFiled extends StatelessWidget {
  const EmailFiled({
    super.key, required this.hinttext, required this.helpertext,
  });
final String hinttext;
final String helpertext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        helperStyle: GoogleFonts.actor(),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16.r)),
        filled: true,
        hintText: hinttext,
        hintStyle: GoogleFonts.actor(fontSize: 12.sp),
        helperText: helpertext,
        fillColor: Colors.black12.withOpacity(.1),
        focusColor: DiceColors.dice2,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16.r)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16.r)),
      ),
    );
  }
}

class NameField extends StatelessWidget {
  const NameField({
    super.key, required this.hinttext, required this.helpertext,
  });
  final String hinttext;
  final String helpertext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hinttext,hintStyle: GoogleFonts.actor(fontSize: 12),
        helperText: helpertext,
        helperStyle: GoogleFonts.actor(),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16.r)),
        filled: true,
        fillColor: Colors.black12.withOpacity(.1),
        focusColor: DiceColors.dice2,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16.r)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16.r)),
      ),
    );
  }
}
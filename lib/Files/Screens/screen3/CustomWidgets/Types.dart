import 'package:google_fonts/google_fonts.dart';
import '../../../Constants/const_imports.dart';


class Tyes extends StatelessWidget {
  const Tyes({
    super.key, required this.name, required this.colors, required this.fontcolors,
  });
  final String name;
  final Color colors;
  final Color fontcolors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 321,
      height: 52,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colors),
      child: Center(
          child: Text(
            name,
            style: GoogleFonts.inter(
                color: fontcolors,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          )),
    );
  }
}
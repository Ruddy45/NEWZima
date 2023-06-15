import 'package:country_code_picker/country_code_picker.dart';

import '../../../Constants/const_imports.dart';
import '../../../Constants/src/colors.dart';

TextFormField NumberField() {
  return TextFormField(
    keyboardType: TextInputType.phone,
    cursorColor: DiceColors.dice5,
    autofocus: true,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16.r)),
      filled: true,
      fillColor: Colors.black12.withOpacity(.1),
      prefix: Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: const CountryCodePicker(
          showFlag: false,
          showCountryOnly: true,
          showFlagDialog: true, showDropDownButton: false,
          initialSelection: '+234',
          dialogSize: Size(double.infinity,double.infinity),
        ),
      ),
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

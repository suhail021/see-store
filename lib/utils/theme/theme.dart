import 'package:flutter/material.dart';
import 'package:google/utils/theme/custom_themes/appbar_theme.dart';
import 'package:google/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:google/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:google/utils/theme/custom_themes/chip_theme.dart';
import 'package:google/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:google/utils/theme/custom_themes/outlined_buttom_theme.dart';
import 'package:google/utils/theme/custom_themes/text_field_theme.dart';
import 'package:google/utils/theme/custom_themes/text_theme.dart';

class SeeAppTheme {
  SeeAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Popppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: SeeTextTheme.lightTextTheme,
    elevatedButtonTheme: SeeElevatedButtomTheme.lightElveatedButtomTheme,
    appBarTheme: SeeAppBarTheme.lightAppBarTeme,
    outlinedButtonTheme: SeeOutlinedButtomTheme.lightOutlinedButtomTheme,
    checkboxTheme: SeeCheckbocTheme.lightCheckboxTheme,
    chipTheme: SeeChipTheme.lightChipTheme,
    inputDecorationTheme: SeeTextFormFieldTheme.lightInputDecorationTheme,
    bottomSheetTheme: SeeButtomSheetTheme.lightBottomSheetTheme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Popppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SeeTextTheme.darkTextTheme,
      elevatedButtonTheme: SeeElevatedButtomTheme.darkElveatedButtomTheme,
    appBarTheme: SeeAppBarTheme.darkAppBarTeme,
    outlinedButtonTheme: SeeOutlinedButtomTheme.darkOutlinedButtomTheme,
    checkboxTheme: SeeCheckbocTheme.darkCheckboxTheme,
    chipTheme: SeeChipTheme.darkChipTheme,
    inputDecorationTheme: SeeTextFormFieldTheme.darkInputDecorationTheme,
    bottomSheetTheme: SeeButtomSheetTheme.darkBottomSheetTheme

  );
}

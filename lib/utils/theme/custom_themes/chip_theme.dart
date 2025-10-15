import 'package:flutter/material.dart';
import 'package:kashmir_wiper_tradors/utils/constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: TColors.softGrey,
    labelStyle: const TextStyle(color: TColors.textPrimary),
    selectedColor: TColors.accent,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: TColors.textWhite,
    backgroundColor: TColors.primaryBackground,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: TColors.darkGrey,
    labelStyle: const TextStyle(color: TColors.textWhite),
    selectedColor: TColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: TColors.textWhite,
    backgroundColor: TColors.darkOptional,
  );
}

import 'package:filcnaplo/theme/colors/colors.dart';
import 'package:flutter/material.dart';

class LightMobileAppColors implements ThemeAppColors {
  @override
  final shadow = const Color(0x00000000); // Transparent
  @override
  final text = const Color(0xffffffff); // White Text
  @override
  final background = const Color(0xfff47cbc); // Darker Pink Background
  @override
  final highlight = const Color(0xFFff99cc); // Vibrant Pink Highlight (Cards)
  @override
  final red = const Color(0xffFF3B30);
  @override
  final orange = const Color(0xffFF9500);
  @override
  final yellow = const Color(0xffFFCC00);
  @override
  final green = const Color(0xff34C759);
  @override
  final filc = const Color(0xff3d7bf4);
  @override
  final teal = const Color(0xff5AC8FA);
  @override
  final blue = const Color(0xff007AFF);
  @override
  final indigo = const Color(0xff5856D6);
  @override
  final purple = const Color(0xffAF52DE);
  @override
  final pink = const Color(0xffFF2D55);
  // new default grade colors
  @override
  final gradeFive = const Color(0xFFFBC0F8); // Light Lavender
  @override
  final gradeFour = const Color(0xFFE398D1); // Light Pink
  @override
  final gradeThree = const Color(0xFFF275DA); // Pink
  @override
  final gradeTwo = const Color(0xFFE84BEA); // Purple
  @override
  final gradeOne = const Color(0xFFE300FF); // Magenta
}


import 'package:berry/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static TextStyle regular(
          {double fontSize = 14,
          Color color = Colors.black,
          double? height,
          FontWeight fontWeight = FontWeight.w600}) =>
      TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        fontFamily: FontFamily.pokemonClassic,
        color: color,
        height: height,
      );
}

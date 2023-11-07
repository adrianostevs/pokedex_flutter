import 'package:flutter/material.dart';
import 'package:pokemon/gen/fonts.gen.dart';

class TextStyles {
  TextStyles._();

  static TextStyle regular(
          {double fontSize = 14,
          Color color = Colors.black,
          double? height,
          FontWeight? fontWeight}) =>
      TextStyle(
        fontWeight: fontWeight ?? FontWeight.w600,
        fontSize: fontSize,
        fontFamily: FontFamily.pokemonClassic,
        color: color,
        height: height,
      );
}

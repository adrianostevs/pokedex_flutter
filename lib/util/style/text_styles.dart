import 'package:flutter/material.dart';
import 'package:pokedex_flutter/gen/fonts.gen.dart';

class AppTextStyle {
  AppTextStyle._();

  /* When height is null or omitted, the line height will be determined by
  the font's metrics directly, which may differ from the fontSize. When height
  is non-null, the line height of the span of text will be a multiple of
  fontSize and be exactly fontSize * height logical pixels tall. */

  static TextStyle regular(
          {double fontSize = 14, Color color = Colors.black, double? height}) =>
      TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: fontSize,
          fontFamily: FontFamily.pokemonClassic,
          color: color,
          height: height);

  static TextStyle semiBold(
          {double fontSize = 14, Color color = Colors.black, double? height}) =>
      TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
          fontFamily: FontFamily.pokemonClassic,
          color: color,
          height: height);

  static TextStyle bold(
          {double fontSize = 14, Color color = Colors.black, double? height}) =>
      TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
          fontFamily: FontFamily.pokemonClassic,
          color: color,
          height: height);
}

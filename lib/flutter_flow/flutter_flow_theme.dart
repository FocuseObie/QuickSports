// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color white;
  Color iconGray;
  Color grayDark;
  Color darkBG;
  Color background;
  Color grayLines;
  Color primaryBtnText;
  Color lineColor;

  TextStyle get title1 => GoogleFonts.getFont(
        'Overpass',
        color: darkBG,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      );
  TextStyle get title2 => GoogleFonts.getFont(
        'Overpass',
        color: darkBG,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'Overpass',
        color: darkBG,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Overpass',
        color: primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Overpass',
        color: darkBG,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Overpass',
        color: grayDark,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Overpass',
        color: darkBG,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFFEE8B60);
  Color secondaryColor = const Color(0xFF262D34);
  Color tertiaryColor = const Color(0xFF39D2C0);
  Color alternate = const Color(0xFF31BFAE);
  Color primaryBackground = const Color(0xFFF1F4F8);
  Color secondaryBackground = const Color(0xFFFFFFFF);
  Color primaryText = const Color(0xFF1D2429);
  Color secondaryText = const Color(0xFF57636C);

  Color white = Color(0xFFFFFFFF);
  Color iconGray = Color(0xFF8B97A2);
  Color grayDark = Color(0xFF57636C);
  Color darkBG = Color(0xFF111417);
  Color background = Color(0xFFF1F4F8);
  Color grayLines = Color(0xFFDBE2E7);
  Color primaryBtnText = Color(0xFFFFFFFF);
  Color lineColor = Color(0xFFE0E3E7);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    TextDecoration decoration,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
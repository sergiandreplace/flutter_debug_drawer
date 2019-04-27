import 'package:flutter/material.dart';

class DebugDrawerTheme {
  final Color backgroundColor;

  final Color sectionColor;

  final double width;

  final EdgeInsetsGeometry sectionPadding;

  final EdgeInsetsGeometry sectionMargin;

  final TextStyle sectionTitleStyle;

  final TextStyle labelStyle;

  final TextStyle valueStyle;

  const DebugDrawerTheme(
      {Key key,
      this.backgroundColor,
      this.sectionColor,
      this.width,
      this.sectionPadding,
      this.sectionMargin,
      this.sectionTitleStyle,
      this.labelStyle,
      this.valueStyle});

  static TextStyle defaultTextStyle = TextStyle(
    fontFamily: "Roboto Condensed",
  );

  static DebugDrawerTheme defaultTheme = DebugDrawerTheme(
    backgroundColor: Colors.white30,
    sectionColor: Colors.white,
    width: 320,
    sectionPadding: EdgeInsets.all(8),
    sectionMargin: EdgeInsets.all(8),
    sectionTitleStyle: defaultTextStyle.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    labelStyle: defaultTextStyle,
    valueStyle: defaultTextStyle.copyWith(fontWeight: FontWeight.bold),
  );
}

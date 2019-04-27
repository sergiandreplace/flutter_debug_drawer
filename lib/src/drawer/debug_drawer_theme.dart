import 'package:flutter/material.dart';

class DebugDrawerTheme {
  final Color backgroundColor;
  final Color sectionColor;
  final double width;
  final EdgeInsetsGeometry sectionPadding;
  final EdgeInsetsGeometry sectionMargin;
  final TextStyle sectionTitleStyle;
  final Color sectionTitleSeparatorColor;
  final EdgeInsetsGeometry sectionTitleSeparatorPadding;
  final double sectionTitleSeparatorHeight;
  final TextStyle labelStyle;
  final TextStyle valueStyle;

  const DebugDrawerTheme({
    this.backgroundColor,
    this.sectionColor,
    this.width,
    this.sectionPadding,
    this.sectionMargin,
    this.sectionTitleStyle,
    this.sectionTitleSeparatorColor,
    this.sectionTitleSeparatorPadding,
    this.sectionTitleSeparatorHeight,
    this.labelStyle,
    this.valueStyle,
  })  : assert(backgroundColor != null),
        assert(sectionColor != null),
        assert(width != null),
        assert(sectionPadding != null),
        assert(sectionMargin != null),
        assert(sectionTitleStyle != null),
        assert(sectionTitleSeparatorColor != null),
        assert(sectionTitleSeparatorPadding != null),
        assert(sectionTitleSeparatorHeight != null),
        assert(labelStyle != null),
        assert(valueStyle != null);

  static TextStyle defaultTextStyle = TextStyle(
      fontFamily: "Roboto Condensed", color: Colors.white, fontSize: 14);

  static DebugDrawerTheme defaultTheme = DebugDrawerTheme(
    backgroundColor: Colors.black,
    sectionColor: Colors.black,
    width: 350,
    sectionPadding: EdgeInsets.all(8),
    sectionMargin: EdgeInsets.all(4),
    sectionTitleStyle: defaultTextStyle.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    sectionTitleSeparatorHeight: 2,
    sectionTitleSeparatorPadding: EdgeInsets.symmetric(vertical: 4),
    sectionTitleSeparatorColor: Colors.white70,
    labelStyle: defaultTextStyle.copyWith(color: Colors.white70),
    valueStyle: defaultTextStyle.copyWith(fontWeight: FontWeight.normal),
  );
}

import 'package:flutter/material.dart';

const double kWebMargin = 40.0;
const List<Color> _colors = [
  kLinearGradientBegin,
  kLinearGradientBegin,
  kLinearGradientBegin,
  kLinearGradientEnd
];
final Decoration kContainerDec = BoxDecoration(
  boxShadow: [
    BoxShadow(
      blurRadius: 30.0,
      color: Colors.black.withOpacity(0.3),
      offset: Offset.zero,
    )
  ],
  // borderRadius: BorderRadius.circular(50.0),
  gradient: LinearGradient(
    colors: _colors,
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  ),
);
const Color kLinearGradientBegin = Color(0xFF687FAA);
const Color kLinearGradientEnd = Color(0xFF72E79A);

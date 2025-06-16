import 'package:flutter/material.dart';

class Uihelper {
  static Widget customImage({required String img}) {
    return Image.asset('assets/images/$img');
  }

  static Widget customText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
    TextAlign textAlign = TextAlign.start, // Default
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }
}

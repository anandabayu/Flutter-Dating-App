/*
 * File: text_white.dart
 * Project: components
 * File Created: Friday, 15th September 2023 2:43:13 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 6:27:17 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:flutter/material.dart';
import 'package:assinmenluvit/common/color.dart';

class TextWhite extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  const TextWhite({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
        fontWeight: fontWeight,
      ),
    );
  }
}

class TextGray extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  const TextGray({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: gray,
        fontWeight: fontWeight,
      ),
    );
  }
}

class TextGraySecondary extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  const TextGraySecondary({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: gray,
        fontWeight: fontWeight,
      ),
    );
  }
}

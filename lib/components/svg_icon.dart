/*
 * File: svg_icon.dart
 * Project: components
 * File Created: Friday, 15th September 2023 2:57:10 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 3:21:38 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String icon;
  const SvgIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
    );
  }
}

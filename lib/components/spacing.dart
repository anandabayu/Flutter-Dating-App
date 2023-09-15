/*
 * File: spacing.dart
 * Project: components
 * File Created: Friday, 15th September 2023 2:40:55 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 2:50:14 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */

import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double? space;
  const Spacing({super.key, this.space = 16});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: space,
      height: space,
    );
  }
}

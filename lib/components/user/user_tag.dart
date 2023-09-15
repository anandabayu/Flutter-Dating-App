/*
 * File: user_tag.dart
 * Project: user
 * File Created: Friday, 15th September 2023 10:40:48 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 10:48:13 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:assinmenluvit/common/color.dart';
import 'package:flutter/material.dart';

class UserTag extends StatelessWidget {
  final String text;
  final bool? isActive;
  const UserTag({super.key, required this.text, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: isActive == true ? pink.withOpacity(0.2) : blackBar,
        border: Border.all(color: isActive == true ? pink : Colors.transparent),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isActive == true ? pink : Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

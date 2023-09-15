/*
 * File: user_photo_indicator.dart
 * Project: user
 * File Created: Friday, 15th September 2023 5:58:17 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 6:01:44 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:assinmenluvit/common/color.dart';
import 'package:flutter/material.dart';

class UserPhotoIndicator extends StatelessWidget {
  final int length;
  final int currentIndex;

  const UserPhotoIndicator({
    super.key,
    required this.length,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 20,
      child: Row(
        children: List.generate(
          length,
          (index) => Expanded(
            child: Container(
              height: 3,
              margin: EdgeInsets.only(
                left: index == 0 ? 10 : 0,
                right: 10,
              ),
              decoration: BoxDecoration(
                color: currentIndex == index ? pink : blackBar,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

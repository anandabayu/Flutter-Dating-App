/*
 * File: user_empty.dart
 * Project: components
 * File Created: Friday, 15th September 2023 4:59:30 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 6:27:21 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:assinmenluvit/components/spacing.dart';
import 'package:assinmenluvit/components/text.dart';
import 'package:flutter/material.dart';

class UserEmpty extends StatelessWidget {
  const UserEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWhite(
            text: "추천 드릴 친구들을 준비 중이에요",
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          Spacing(),
          TextGray(
            text: "매일 새로운 친구들을 소개시켜드려요",
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}

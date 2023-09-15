/*
 * File: user_name.dart
 * Project: user
 * File Created: Friday, 15th September 2023 6:28:24 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 6:29:17 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:assinmenluvit/components/spacing.dart';
import 'package:assinmenluvit/components/text.dart';
import 'package:assinmenluvit/model/user_model.dart';
import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  final User user;

  const UserName({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextWhite(
              text: user.name,
              fontSize: 28,
            ),
            const Spacing(
              space: 4,
            ),
            TextWhite(
              text: "${user.age}",
              fontSize: 28,
            ),
          ],
        ),
        const Spacing(
          space: 4,
        )
      ],
    );
  }
}

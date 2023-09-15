/*
 * File: application_header.dart
 * Project: components
 * File Created: Friday, 15th September 2023 3:04:51 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 6:25:21 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:assinmenluvit/components/like_container.dart';
import 'package:flutter/material.dart';
import 'package:assinmenluvit/common/color.dart';
import 'package:assinmenluvit/components/spacing.dart';
import 'package:assinmenluvit/components/svg_icon.dart';
import 'package:assinmenluvit/components/text.dart';

class ApplicationHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const ApplicationHeader({super.key}) : preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        children: [
          SvgIcon(
            icon: "assets/icons/location_pin.svg",
          ),
          Spacing(
            space: 8,
          ),
          TextWhite(text: "목이길어슬픈기린님의 새로운 스팟"),
          Spacer(),
          LikeContainer(
            totalLike: 323323,
          ),
          SvgIcon(
            icon: "assets/icons/bell.svg",
          ),
        ],
      ),
      backgroundColor: black,
    );
  }
}

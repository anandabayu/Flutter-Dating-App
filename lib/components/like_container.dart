/*
 * File: like_container.dart
 * Project: components
 * File Created: Friday, 15th September 2023 6:06:53 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 6:25:28 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:assinmenluvit/components/spacing.dart';
import 'package:assinmenluvit/components/svg_icon.dart';
import 'package:assinmenluvit/components/text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LikeContainer extends StatelessWidget {
  final int totalLike;
  final bool? isActive;

  const LikeContainer({super.key, required this.totalLike, this.isActive = true});

  String _getFormattedLike(int totalLike) {
    String customPattern = '#,###';
    return NumberFormat(customPattern).format(totalLike);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.3),
                offset: const Offset(0.0, 1),
                blurRadius: 5,
              ),
            ],
            color: Colors.black,
          ),
          child: Row(
            children: [
              SvgIcon(
                icon: isActive == true ? "assets/icons/star.svg" : "assets/icons/star_dark.svg",
              ),
              const Spacing(
                space: 8,
              ),
              TextWhite(text: _getFormattedLike(totalLike)),
            ],
          ),
        ),
      ],
    );
  }
}

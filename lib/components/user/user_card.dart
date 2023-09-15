/*
 * File: user_card.dart
 * Project: user
 * File Created: Friday, 15th September 2023 5:08:42 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 10:50:10 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:assinmenluvit/common/color.dart';
import 'package:assinmenluvit/components/user/user_info.dart';
import 'package:assinmenluvit/components/user/user_photo_indicator.dart';
import 'package:assinmenluvit/model/user_model.dart';
import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  int currentIndex = 0;
  Offset? tapPosition;

  void _changeIndex(bool isNext) {
    int newIndex = currentIndex;
    if (isNext && currentIndex < widget.user.photos.length - 1) {
      newIndex = currentIndex + 1;
    } else if (!isNext && currentIndex > 0) {
      newIndex = currentIndex - 1;
    }

    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: darkGray,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: darkGray2,
          width: 1,
        ),
      ),
      margin: const EdgeInsets.only(left: 10),
      height: double.infinity,
      width: width * 0.95,
      child: Stack(
        children: [
          GestureDetector(
            onTapDown: (details) {
              final RenderBox box = context.findRenderObject() as RenderBox;
              final localOffset = box.globalToLocal(details.globalPosition);
              final x = localOffset.dx;
              final y = localOffset.dy;

              // check if tap location on top
              if (y < box.size.height / 2) {
                // check if tap location on left
                if (x < box.size.width / 2) {
                  _changeIndex(false);
                } else {
                  _changeIndex(true);
                }
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.user.photos[currentIndex],
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          UserPhotoIndicator(
            currentIndex: currentIndex,
            length: widget.user.photos.length,
          ),
          UserInfo(user: widget.user),
        ],
      ),
    );
  }
}

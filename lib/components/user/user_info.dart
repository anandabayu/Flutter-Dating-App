/*
 * File: user_info.dart
 * Project: user
 * File Created: Friday, 15th September 2023 6:03:17 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 10:47:06 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:assinmenluvit/components/like_container.dart';
import 'package:assinmenluvit/components/spacing.dart';
import 'package:assinmenluvit/components/svg_icon.dart';
import 'package:assinmenluvit/components/text.dart';
import 'package:assinmenluvit/components/user/user_name.dart';
import 'package:assinmenluvit/components/user/user_tag.dart';
import 'package:assinmenluvit/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class UserInfo extends StatefulWidget {
  final User user;
  const UserInfo({
    super.key,
    required this.user,
  });

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  bool showMore = false;
  int? tagIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.vertical(
            bottom: Radius.circular(20),
          ),
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LikeContainer(
                        totalLike: widget.user.totalLike,
                        isActive: false,
                      ),
                      UserName(user: widget.user),
                      TextGraySecondary(
                        text: widget.user.location,
                        fontSize: 16,
                      ),
                      if (showMore)
                        Column(
                          children: [
                            const Spacing(),
                            TextGraySecondary(
                              text: widget.user.description,
                            ),
                            const Spacing(),
                            Wrap(
                              direction: Axis.horizontal,
                              spacing: 8,
                              runSpacing: 8,
                              children: widget.user.tags.mapIndexed(
                                (index, tag) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        tagIndex = index;
                                      });
                                    },
                                    child: UserTag(
                                      text: tag,
                                      isActive: tagIndex == index,
                                    ),
                                  );
                                },
                              ).toList(),
                            )
                          ],
                        ),
                    ],
                  ),
                ),
                const Spacing(
                  space: 4,
                ),
                const SvgIcon(icon: "assets/icons/like.svg")
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  showMore = !showMore;
                });
              },
              child: Icon(
                showMore ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

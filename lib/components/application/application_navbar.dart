/*
 * File: navbar.dart
 * Project: components
 * File Created: Friday, 15th September 2023 3:15:36 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 3:20:53 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:assinmenluvit/common/color.dart';
import 'package:assinmenluvit/components/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class ApplicationNavbar extends StatelessWidget {
  const ApplicationNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      items: const [
        TabItem(icon: SvgIcon(icon: "assets/icons/home.svg"), title: '홈'),
        TabItem(icon: SvgIcon(icon: "assets/icons/location_pin_off.svg"), title: '스팟'),
        TabItem(icon: SvgIcon(icon: "assets/icons/navigation_star.svg"), title: ''),
        TabItem(icon: SvgIcon(icon: "assets/icons/chat.svg"), title: '채팅'),
        TabItem(icon: SvgIcon(icon: "assets/icons/person.svg"), title: '마이'),
      ],
      onTap: (int i) => print('click index=$i'),
      style: TabStyle.fixed,
      backgroundColor: Colors.black,
      activeColor: pink,
    );
  }
}

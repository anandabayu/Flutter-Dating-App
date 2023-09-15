import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:assinmenluvit/common/color.dart';
import 'package:assinmenluvit/components/application/application_header.dart';
import 'package:assinmenluvit/components/application/application_navbar.dart';
import 'package:assinmenluvit/components/spacing.dart';
import 'package:assinmenluvit/components/user/user_card.dart';
import 'package:assinmenluvit/components/user/user_empty.dart';
import 'package:assinmenluvit/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isEmpty = false;

  @override
  void initState() {
    super.initState();

    Provider.of<UserProvider>(context, listen: false).getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: const ApplicationHeader(),
      body: isEmpty
          ? const UserEmpty()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacing(),
                Consumer<UserProvider>(
                  builder: (context, data, _) {
                    var users = data.users;

                    return Expanded(
                      child: AppinioSwiper(
                        cardsCount: users.length,
                        padding: EdgeInsets.zero,
                        onSwiping: (AppinioSwiperDirection direction) {},
                        onSwipe: (index, direction) {},
                        swipeOptions: const AppinioSwipeOptions.only(
                          bottom: true,
                          left: true,
                        ),
                        onEnd: () {
                          setState(() {
                            isEmpty = true;
                          });
                        },
                        cardsBuilder: (context, index) {
                          return UserCard(user: users[index]);
                        },
                      ),
                    );
                  },
                ),
                const Spacing(
                  space: 40,
                ),
              ],
            ),
      bottomNavigationBar: const ApplicationNavbar(),
    );
  }
}

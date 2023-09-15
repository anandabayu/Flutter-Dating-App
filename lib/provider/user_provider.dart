/*
 * File: data_provider.dart
 * Project: provider
 * File Created: Friday, 15th September 2023 4:03:48 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Saturday, 16th September 2023 12:21:00 am
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */
import 'package:flutter/foundation.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:assinmenluvit/model/user_model.dart';

class UserProvider extends ChangeNotifier {
  List<User> _users = [];
  List<User> get users => _users;

  FirebaseDatabase database = FirebaseDatabase.instance;

  Future<void> getUsers() async {
    final userData = await database.ref("data").get();
    final response = userData.value as Map<dynamic, dynamic>;

    List<User> u = [];
    response.forEach((key, value) {
      u.add(User.fromJson(value));
    });

    _users = u;

    notifyListeners();
  }
}

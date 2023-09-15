/*
 * File: user_model.dart
 * Project: model
 * File Created: Friday, 15th September 2023 4:11:28 pm
 * Author: Ananda Yudhistira (anandabayu12@gmail.com)
 * -----
 * Last Modified: Friday, 15th September 2023 4:25:24 pm
 * Modified By: Ananda Yudhistira (anandabayu12@gmail.com>)
 * -----
 * Copyright 2023 Ananda Yudhistira
 */

class User {
  final int age;
  final String description;
  final List<dynamic> photos;
  final String location;
  final String name;
  final List<dynamic> tags;
  final int totalLike;

  User({
    required this.age,
    required this.description,
    required this.photos,
    required this.location,
    required this.name,
    required this.tags,
    required this.totalLike,
  });

  factory User.fromJson(dynamic json) {
    return User(
      age: json['age'],
      description: json['description'],
      photos: json['images'] ?? [],
      location: json['location'],
      name: json['name'],
      tags: json['tags'] ?? [],
      totalLike: json['totalLike'] ?? 0,
    );
  }
}

import 'package:flutter/material.dart';

class Category {
  // unique identifier
  final String id;
  // type of food
  final String title;
  // the background color
  final Color color;

  Category({this.id, this.color = Colors.orange, this.title});
}

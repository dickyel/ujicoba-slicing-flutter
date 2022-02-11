import 'package:flutter/material.dart';

class DropdownModels {
  int id;
  String title;
  List<dynamic> items = [];

  DropdownModels({
    this.id = 1,
    this.title = '',
    required this.items,
  });
}

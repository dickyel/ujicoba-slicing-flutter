import 'package:flutter/material.dart';

class ProgressModels {
  int id;
  String titleProgress;
  String dosen;
  String imageUrl;
  var color;

  ProgressModels(
      {this.id = 1,
      this.imageUrl = '',
      this.titleProgress = '',
      this.dosen = '',
      this.color});
}

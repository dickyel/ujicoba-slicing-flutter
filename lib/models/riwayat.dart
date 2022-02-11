import 'package:flutter/material.dart';

class RiwayatPesan {
  String text;
  String secondaryText;
  String imageUrl;
  String time;

  RiwayatPesan(
      {@required this.text = '',
      @required this.secondaryText = '',
      @required this.imageUrl = '',
      @required this.time = ''});
}

import 'package:flutter/material.dart';

class ProfilePhotoModels {
  int id;
  String name;
  String imageUrl;
  String infoJurusan;

  ProfilePhotoModels({
    this.id = 1,
    this.imageUrl = '',
    this.name = '',
    this.infoJurusan = '',
  });
}

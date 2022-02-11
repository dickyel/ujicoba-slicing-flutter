import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:salamapps/models/admin/group_detail_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/admin/group_card.dart';

class DetailGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: FlatButton(
          onPressed: () {},
          child: Image.asset(
            'assets/images/kembali.png',
          ),
        ),
        title: Text(
          'Kelompok 1',
          style: nameTextStyle,
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: edge,
              left: edge,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/gambar.png',
                        ),
                      ),
                      Positioned(
                        right: -12,
                        bottom: 0,
                        child: SizedBox(
                          height: 45,
                          width: 45,
                          child: FlatButton(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.white),
                            ),
                            onPressed: () {},
                            child:
                                Image.asset('assets/images/user_box_fill.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Column(
              children: [
                Text('Muhammad Dikky Purwanto'),
                SizedBox(
                  height: 5,
                ),
                Text('1187050067'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: edge,
              right: edge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lihat Anggota',
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('Tambah'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2),
            child: Column(
              children: [
                GroupCard(
                  GroupDetail(
                      id: 1,
                      imageUrl: 'assets/images/gambar.png',
                      name: 'Muhammad Dikky ',
                      nim: '1187050067'),
                ),
                SizedBox(
                  height: 20,
                ),
                GroupCard(
                  GroupDetail(
                    id: 2,
                    imageUrl: 'assets/images/gambar.png',
                    name: 'Muhammad Dikky ',
                    nim: '1187050067',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GroupCard(
                  GroupDetail(
                      id: 3,
                      imageUrl: 'assets/images/gambar.png',
                      name: 'Muhammad Dikky ',
                      nim: '1187050067'),
                ),
                SizedBox(
                  height: 20,
                ),
                GroupCard(
                  GroupDetail(
                      id: 4,
                      imageUrl: 'assets/images/gambar.png',
                      name: 'Muhammad Dikky ',
                      nim: '1187050067'),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

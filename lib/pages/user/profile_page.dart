import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:salamapps/models/app_bar_back_models.dart';
import 'package:salamapps/models/profile/profile_models.dart';
import 'package:salamapps/models/profile/profile_photo_models.dart';
import 'package:salamapps/pages/not_found_page.dart';
import 'package:salamapps/pages/user/biodata_orang_tua_page.dart';
import 'package:salamapps/pages/user/biodata_page.dart';
import 'package:salamapps/pages/user/guidance_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/app_bar_card.dart';
import 'package:salamapps/widgets/shared/bottom_navbar.dart';
import 'package:salamapps/widgets/shared/profile_card.dart';
import 'package:salamapps/widgets/shared/profile_card_photo.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            ProfileCardPhoto(
              ProfilePhotoModels(
                id: 1,
                imageUrl: 'assets/images/gambar.png',
                name: 'Muhammad Dikky',
                infoJurusan: 'Teknik Informatika',
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BiodataPage(),
                  ),
                );
              },
              child: ProfileCard(
                ProfileModels(
                  id: 1,
                  imageUrl: 'assets/icon/ic_file-dock-1.svg',
                  name: 'Biodata',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BiodataOrangTuaPage(),
                  ),
                );
              },
              child: ProfileCard(
                ProfileModels(
                    id: 2,
                    imageUrl: 'assets/icon/ic_file-dock-2.svg',
                    name: 'Data Orang Tua'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotFoundPage(),
                  ),
                );
              },
              child: ProfileCard(
                ProfileModels(
                    id: 3,
                    imageUrl: 'assets/icon/ic_file-dock-3.svg',
                    name: 'Data SMA'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GuidancePage(),
                  ),
                );
              },
              child: ProfileCard(
                ProfileModels(
                    id: 4,
                    imageUrl: 'assets/icon/ic_file-dock-2.svg',
                    name: 'Panduan'),
              ),
            ),
            ProfileCard(
              ProfileModels(
                id: 5,
                imageUrl: 'assets/icon/ic_close.svg',
                name: 'Log Out',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

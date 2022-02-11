import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/info.dart';
import 'package:salamapps/models/main_menu/menu.dart';
import 'package:salamapps/models/main_menu/menu_models.dart';
import 'package:salamapps/pages/sidebar_page.dart';
import 'package:salamapps/pages/user/academic_services_page.dart';
import 'package:salamapps/pages/user/create_event_page.dart';
import 'package:salamapps/pages/user/help_services_page.dart';
import 'package:salamapps/pages/user/lc/language_splash_page.dart';
import 'package:salamapps/pages/user/news_page.dart';
import 'package:salamapps/pages/user/sikukt/sikukt_home_page.dart';
import 'package:salamapps/pages/user/sikukt/sikukt_menu.dart';
import 'package:salamapps/pages/user/wiki_search_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/app_bar_home.dart';
import 'package:salamapps/widgets/shared/bottom_navbar.dart';
import 'package:salamapps/widgets/shared/carousel_card.dart';
import 'package:salamapps/widgets/shared/info_card.dart';
import 'package:salamapps/widgets/shared/main_menu_card.dart';
import 'package:salamapps/widgets/menu_card.dart';
import 'package:salamapps/widgets/navbar_top.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'news_detail_page.dart';

class HomePage extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: buildAppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: edge,
            ),
            child: Text(
              'Berita Hari ini',
              style: menuTextStyle,
            ),
          ),
          CarouselCard(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: edge,
            ),
            child: Text(
              'Menu Utama',
              style: menuTextStyle,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge, right: edge),
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 350,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 3 / 2,
                      ),
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AcademicServicesPage()),
                            );
                          },
                          child: MainMenuCard(MenuModels(
                              id: 1,
                              name: 'Akademik',
                              imageUrl: 'assets/icon/ic_hard-drive.svg',
                              color: redColor)),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LanguageSplashPage()),
                              );
                            },
                            child: MainMenuCard(
                              MenuModels(
                                  id: 2,
                                  name: 'Kursus',
                                  imageUrl: 'assets/icon/ic_notif-badge.svg',
                                  color: orangeColor),
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WikiSearchPage()),
                            );
                          },
                          child: MainMenuCard(
                            MenuModels(
                                id: 3,
                                name: 'Wikipedia',
                                imageUrl: 'assets/icon/ic_wiki.svg',
                                color: purpleColor),
                          ),
                        ),
                        MainMenuCard(
                          MenuModels(
                              id: 4,
                              name: 'Isi Kuesioner',
                              imageUrl: 'assets/icon/ic_device-fill.svg',
                              color: greenColor),
                        ),
                        MainMenuCard(
                          MenuModels(
                              id: 5,
                              name: 'ASCII',
                              imageUrl: 'assets/icon/ic_file-fill.svg',
                              color: blueColor2),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SikuktHomePage()),
                            );
                          },
                          child: MainMenuCard(
                            MenuModels(
                                id: 6,
                                name: 'UKT',
                                imageUrl: 'assets/icon/ic_file-list-fill.svg',
                                color: blueColor),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewsPage(),
                              ),
                            );
                          },
                          child: MainMenuCard(
                            MenuModels(
                                id: 7,
                                name: 'Berita',
                                imageUrl: 'assets/icon/ic_file-list-fill-1.svg',
                                color: blackColor),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateEventPage(),
                              ),
                            );
                          },
                          child: MainMenuCard(
                            MenuModels(
                                id: 8,
                                name: 'Buat Event',
                                imageUrl: 'assets/icon/ic_file-add-fill.svg',
                                color: blueColor2),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HelpServicesPage(),
                              ),
                            );
                          },
                          child: MainMenuCard(
                            MenuModels(
                                id: 9,
                                name: 'Layanan Bantuan',
                                imageUrl: 'assets/icon/ic_chat-smile.svg',
                                color: redColor),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: edge,
            ),
            child: Text(
              'Info Event atau Berita',
              style: menuTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(edge),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsDetailPage(),
                      ),
                    );
                  },
                  child: InfoCard(
                    Info(
                      id: 1,
                      imageUrl: 'assets/images/alan1.jpg',
                      title: 'Pembayaran UKT Tahap II',
                      caption: 'Keuangan',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InfoCard(
                  Info(
                    id: 2,
                    imageUrl: 'assets/images/alan2.jpg',
                    title: 'Info Bimbingan dan Tahfidz',
                    caption: 'Keuangan',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InfoCard(
                  Info(
                    id: 3,
                    imageUrl: 'assets/images/alan1.jpg',
                    title: 'Info Sidang Munaqosah',
                    caption: 'Keuangan',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: SidebarPage(),
      bottomNavigationBar: BottomNavbar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icon/ic_menu.svg'),
      ),
      centerTitle: true,
      title: Image.asset(
        'assets/icon/ic_logo.png',
        height: 40,
      ),
      elevation: 1,
    );
  }
}

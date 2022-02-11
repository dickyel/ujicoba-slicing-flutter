import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/admin/statistik_detail_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/admin/dashboard_card.dart';
import 'package:salamapps/widgets/admin/dashboard_statistic_card.dart';
import 'package:salamapps/widgets/navbar_top.dart';
import 'package:salamapps/widgets/shared/bottom_navbar.dart';
import 'package:salamapps/widgets/shared/info_card.dart';
import 'package:salamapps/models/info.dart';
import 'package:salamapps/models/admin/admin_page.dart';

class HomePageAdmin extends StatefulWidget {
  @override
  _HomePageAdminState createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: <Widget>[
          NavbarTop(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: edge,
              right: edge,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Menu Utama',
                  style: menuTextStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: edge,
              right: edge,
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 380,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 1,
                      ),
                      children: <Widget>[
                        DashboardCard(
                          AdminHome(
                            id: 1,
                            name: 'Akademik',
                            imageUrl: 'assets/images/Form_fill 1.png',
                            color: redColor,
                          ),
                        ),
                        DashboardCard(
                          AdminHome(
                            id: 2,
                            name: 'Input Nilai',
                            imageUrl: 'assets/images/File_dock_add_fill 1.png',
                            color: orangeColor,
                          ),
                        ),
                        DashboardCard(
                          AdminHome(
                            id: 3,
                            name: 'Artikel',
                            imageUrl: 'assets/images/File_fill 1.png',
                            color: purpleColor,
                          ),
                        ),
                        DashboardCard(
                          AdminHome(
                            id: 4,
                            name: 'Status',
                            imageUrl: 'assets/images/Form_fill 1.png',
                            color: blueColor2,
                          ),
                        ),
                        DashboardCard(
                          AdminHome(
                            id: 5,
                            name: 'Keluhan',
                            imageUrl: 'assets/images/Form_fill 1.png',
                            color: greyColor2,
                          ),
                        ),
                        DashboardCard(
                          AdminHome(
                            id: 6,
                            name: 'Lainnya',
                            imageUrl: 'assets/images/Form_fill 1.png',
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: edge,
              right: edge,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Statistik',
                  style: menuTextStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: edge,
              right: edge,
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 360,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 3 / 2,
                      ),
                      children: <Widget>[
                        StatisticDashboardCard(
                          StatisticDetailHome(
                              id: 1,
                              jumlah: '200',
                              name: 'Jumlah Dosen',
                              color: orangeColor),
                        ),
                        StatisticDashboardCard(StatisticDetailHome(
                            id: 2,
                            jumlah: '5000',
                            name: 'Jumlah Mahasiswa',
                            color: redColor)),
                        StatisticDashboardCard(StatisticDetailHome(
                            id: 3,
                            jumlah: '100',
                            name: 'Jumlah PNS',
                            color: purpleColor)),
                        StatisticDashboardCard(StatisticDetailHome(
                            id: 4,
                            jumlah: '300',
                            name: 'Jumlah Artikel',
                            color: greenColor)),
                        StatisticDashboardCard(
                          StatisticDetailHome(
                              id: 5,
                              jumlah: '10',
                              name: 'Jumlah Fakultas',
                              color: blackColor),
                        ),
                        StatisticDashboardCard(
                          StatisticDetailHome(
                              id: 6,
                              jumlah: '50',
                              name: 'Jumlah Jurusan',
                              color: blackColor),
                        ),
                        StatisticDashboardCard(
                          StatisticDetailHome(
                              id: 7,
                              jumlah: '100',
                              name: 'Jumlah Non PNS',
                              color: blueColor2),
                        ),
                        StatisticDashboardCard(
                          StatisticDetailHome(
                              id: 1,
                              jumlah: '200',
                              name: 'Jumlah Dosen',
                              color: redColor),
                        ),
                        StatisticDashboardCard(
                          StatisticDetailHome(
                              id: 1,
                              jumlah: '200',
                              name: 'Jumlah Dosen',
                              color: redColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

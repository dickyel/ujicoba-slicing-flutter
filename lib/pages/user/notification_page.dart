import 'package:flutter/material.dart';
import 'package:salamapps/models/notification/notification_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/shared/bottom_navbar.dart';
import 'package:salamapps/widgets/shared/notification_card.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                ),
                child: Column(
                  children: [
                    Text(
                      'Notifikasi',
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.only(left: 10, bottom: 20, right: 10),
                child: TabBar(
                  unselectedLabelColor: greyColor2,
                  labelColor: backgroundColor,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: blueColor),
                  tabs: [
                    Tab(
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 24, right: 24),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 1, color: blueColor)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Progress',
                            )),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 1,
                              color: blueColor,
                            )),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Tugas',
                            )),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 1, color: blueColor)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Recents',
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 400,
                padding: EdgeInsets.all(24),
                child: TabBarView(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today'),
                      SizedBox(
                        height: 10,
                      ),
                      NotificationCard(
                        NotificationModels(
                            id: 10,
                            imageUrl: 'assets/images/logo-if.png',
                            titleNotification: 'Program android',
                            pesan: 'anda mendapat pesan baru',
                            time: '2.12'),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today'),
                      SizedBox(
                        height: 10,
                      ),
                      NotificationCard(
                        NotificationModels(
                            id: 1,
                            imageUrl: 'assets/images/logo-if.png',
                            titleNotification: 'Program android',
                            pesan: 'anda mendapat pesan baru',
                            time: '2.12'),
                      ),
                      NotificationCard(
                        NotificationModels(
                            id: 1,
                            imageUrl: 'assets/images/logo-if.png',
                            titleNotification: 'Program android',
                            pesan: 'anda mendapat pesan baru',
                            time: '2.12'),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today'),
                      SizedBox(
                        height: 10,
                      ),
                      NotificationCard(
                        NotificationModels(
                            id: 1,
                            imageUrl: 'assets/images/logo-if.png',
                            titleNotification: 'Program android',
                            pesan: 'anda mendapat pesan baru',
                            time: '2.12'),
                      ),
                      NotificationCard(
                        NotificationModels(
                            id: 1,
                            imageUrl: 'assets/images/logo-if.png',
                            titleNotification: 'Program android',
                            pesan: 'anda mendapat pesan baru',
                            time: '2.12'),
                      ),
                    ],
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

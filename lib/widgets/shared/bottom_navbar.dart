import 'package:flutter/material.dart';
import 'package:salamapps/pages/user/home_page.dart';
import 'package:salamapps/pages/user/notification_page.dart';
import 'package:salamapps/pages/user/profile_page.dart';
import 'package:salamapps/pages/user/progress_page.dart';
import 'package:salamapps/pages/user/search_page.dart';
import 'package:salamapps/pages/user/wiki_search_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;
  // final screens = [
  //   HomePage(),
  //   ProgressPage(),
  //   NotificationPage(),
  //   WikiSearchPage(),
  //   ProfilePage()
  // ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      selectedItemColor: blueColor2,
      unselectedItemColor: greyColor,
      selectedFontSize: 14,
      unselectedFontSize: 25,
      showUnselectedLabels: false,
      onTap: (index) => setState(() => currentIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: SvgPicture.asset(
                'assets/icon/ic_home.svg',
              ),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProgressPage(),
                  ),
                );
              },
              child: SvgPicture.asset(
                'assets/icon/ic_bar-chart.svg',
              ),
            ),
          ),
          label: 'Progress',
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ),
                );
              },
              child: SvgPicture.asset(
                'assets/icon/ic_notification.svg',
              ),
            ),
          ),
          label: 'Notifikasi',
        ),
        BottomNavigationBarItem(
          icon: Container(
              child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
            child: SvgPicture.asset(
              'assets/icon/ic_zoom-out.svg',
            ),
          )),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: SvgPicture.asset(
                'assets/icon/ic_user.svg',
              ),
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}

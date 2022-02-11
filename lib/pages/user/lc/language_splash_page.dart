import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/pages/user/lc/language_home_page.dart';
import 'package:salamapps/pages/user/sikukt/sikukt_menu.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class LanguageSplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff040C1E),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icon/ic_lc.svg',
                height: 200,
              ),
              SizedBox(
                height: 37,
              ),
              Text(
                'Courses Language Center',
                style: TextStyle(
                  color: backgroundColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Belajar kursus sekarang lebih mudah\ndi genggaman anda',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: backgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 240,
                height: 52,
                decoration: BoxDecoration(
                    border: Border.all(color: backgroundColor, width: 1)),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LanguageHomePage()),
                    );
                  },
                  color: Color(0xff040C1E),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: backgroundColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

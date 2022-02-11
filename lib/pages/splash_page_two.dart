import 'package:flutter/material.dart';
import 'package:salamapps/pages/splash_page_tree.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class SplashPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/img_splash2.png',
                    height: 120,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: splashScreenTop,
                left: splashScreenLeft,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 240,
                  ),
                  Text(
                    'Mudah dan Cepat',
                    style: blueTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Terdapat fitur notifikasi dan\nmengirimkan pesan pada dosen anda',
                    style: captionTextStyle,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Group2.png',
                            width: 120,
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            width: 180,
                            height: 52,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SplashPageTree()),
                                );
                              },
                              color: blueColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                'Next',
                                style: buttonTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

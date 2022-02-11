import 'package:flutter/material.dart';
import 'package:salamapps/pages/login_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class SplashPageTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: splashScreenTop,
                left: splashScreenLeft,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Tersedia di Play Store',
                    style: blueTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Cukup download pada play store\ndan rasakan sensasi menggunakannya',
                    style: captionTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Image.asset(
                            'assets/images/img_splash3.png',
                            height: 120,
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Image.asset(
                            'assets/images/Group3.png',
                            width: 120,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: 180,
                            height: 52,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              color: blueColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                'Continue',
                                style: buttonTextStyle,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

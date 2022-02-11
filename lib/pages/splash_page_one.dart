import 'package:flutter/material.dart';
import 'package:salamapps/pages/splash_page_two.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class SplashPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo-if.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Gunakan Salam Apps',
                    style: blueTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Sekarang , sudah ada terintegrasi\ndengan android anda',
                    style: captionTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Image.asset(
                            'assets/images/img_splash1.png',
                            height: 120,
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Image.asset(
                            'assets/images/Group1.png',
                            width: 120,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: 180,
                            height: 50,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SplashPageTwo()),
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

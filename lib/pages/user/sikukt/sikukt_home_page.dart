import 'package:flutter/material.dart';
import 'package:salamapps/pages/user/sikukt/sikukt_menu.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class SikuktHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img_sikukt1.png',
              height: 250,
            ),
            SizedBox(height: 40),
            Container(
              width: 230,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SikuktMenu()),
                  );
                },
                color: Color(0xff02C6CB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Ajukan Keringanan',
                  style: buttonTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OpeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/images/logo-if.svg',
              width: 20,
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Digitalisasi Informatika\nUIN SUNAN GUNUNG DJATI\nBANDUNG',
              textAlign: TextAlign.center,
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class NotFoundPage extends StatefulWidget {
  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Image.asset('assets/images/no-connection.gif'),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
              ),
              child: Column(
                children: [
                  Text(
                    'Ooops!😓',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Halaman tidak bisa ditemukan / belum dibuka / internet anda bermasalah.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: blueColor,
                    child: Text(
                      'Back To Home',
                      style: TextStyle(
                        color: backgroundColor,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

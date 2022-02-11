import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:salamapps/models/info.dart';
import 'package:salamapps/models/seminar/progress_models.dart';
import 'package:salamapps/pages/user/prayer_practice_page.dart';
import 'package:salamapps/pages/user/signature_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/shared/bottom_navbar.dart';
import 'package:salamapps/widgets/shared/info_card.dart';
import 'package:salamapps/widgets/shared/progress_card.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Color(0xffC1EEF8),
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                      vertical: edge,
                    ),
                    child: FadeInDown(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Progress Saya',
                            style: TextStyle(
                              color: blackColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '2 November 2021',
                            style: TextStyle(
                              color: blackColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Bimbingan',
                                    style: TextStyle(
                                        color: greyColor2,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_left)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_right)),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FadeInDown(
                child: Padding(
                  padding: EdgeInsets.only(left: 24, right: edge, top: 15),
                  child: Opacity(
                    opacity: 0.9,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrayerPracticePage()),
                            );
                          },
                          child: ProgressCard(
                            ProgressModels(
                                id: 1,
                                color: blueColor2,
                                titleProgress: 'Bimbingan Praktek Ibadah',
                                dosen: 'Sutardi S.KOM',
                                imageUrl: 'assets/images/img_prayer.png'),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ProgressCard(
                          ProgressModels(
                              id: 2,
                              color: redColor,
                              titleProgress: 'Bimbingan Praktek Tahfidz',
                              dosen: 'Sutardi S.KOM',
                              imageUrl: 'assets/images/img_friend.png'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ProgressCard(
                          ProgressModels(
                              id: 3,
                              color: purpleColor,
                              titleProgress: 'Bimbingan Praktek Tilawah',
                              dosen: 'Sutardi S.KOM',
                              imageUrl: 'assets/images/img_work.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

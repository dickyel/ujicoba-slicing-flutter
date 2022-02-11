import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/app_bar_back_models.dart';
import 'package:salamapps/models/prayer-practice/prayer_practice_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/app_bar_card.dart';
import 'package:salamapps/widgets/shared/bottom_navbar.dart';
import 'package:salamapps/widgets/shared/prayer_practice_card.dart';
import 'package:salamapps/widgets/tab_bar_card.dart';

class PrayerPracticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: greenColor,
                ),
                padding: EdgeInsets.only(
                  left: edge,
                  right: edge,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Bimbingan Praktek Ibadah',
                      style: titleInfoPractice,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rifki Setiaji, S.T, M.Kom',
                      style: nameInfoPractice,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, right: edge),
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/statistik.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge, right: edge),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lihat Detail',
                      style: seeDetailTextStyle,
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return PrayerPracticeCard(
                      PrayerPracticeModels(
                        surat: 'An - Nas (1 -6)',
                        nilai: 'B+',
                        status: 'Selesai',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: blueColor2,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icon/ic_back_white.svg'),
      ),
      centerTitle: true,
      title: Text(
        'Detail',
        style: appBarStyle,
      ),
    );
  }
}

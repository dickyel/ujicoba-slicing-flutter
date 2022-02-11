import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:salamapps/models/seminar/seminar_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/shared/seminar_card.dart';

class SeminarPage extends StatelessWidget {
  const SeminarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  SeminarCard(SeminarModels(
                      id: 1,
                      title: 'Kerja Praktek',
                      imageUrl: 'assets/images/bt.png')),
                  SeminarCard(SeminarModels(
                      id: 2,
                      title: 'Usulan Proposal',
                      imageUrl: 'assets/images/bt.png')),
                  SeminarCard(SeminarModels(
                    id: 3,
                    title: 'Kolokium',
                    imageUrl: 'assets/images/bt.png',
                  )),
                  SeminarCard(SeminarModels(
                    id: 4,
                    title: 'Munaqosah',
                    imageUrl: 'assets/images/bt.png',
                  )),
                ],
              ),
            ),
          ),
        ));
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
        'Seminar & Sidang',
        style: appBarStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:salamapps/models/seminar/seminar_models.dart';
import 'package:salamapps/pages/user/study_detail.dart';
import 'package:salamapps/pages/user/study_detail_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/shared/seminar_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StudyInfoPage extends StatelessWidget {
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudyDetailPage()),
                      );
                    },
                    child: SeminarCard(
                      SeminarModels(
                          id: 1,
                          title: 'Praktikum Mesin Learning',
                          imageUrl: 'assets/icon/ic_file-dock-3.svg'),
                    ),
                  ),
                  SeminarCard(
                    SeminarModels(
                      id: 2,
                      title: 'Pemrograman Mobile',
                      imageUrl: 'assets/icon/ic_file-dock-3.svg',
                    ),
                  ),
                  SeminarCard(SeminarModels(
                    id: 3,
                    title: 'Pemrograman Web',
                    imageUrl: 'assets/icon/ic_file-dock-3.svg',
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
        'Mata Kuliah',
        style: TextStyle(color: backgroundColor),
      ),
    );
  }
}

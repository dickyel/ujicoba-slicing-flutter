import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/seminar/seminar_models.dart';
import 'package:salamapps/models/study/study_detail_models.dart';
import 'package:salamapps/pages/user/study_detail.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/shared/seminar_card.dart';
import 'package:salamapps/widgets/shared/study_detail_card.dart';

class StudyDetailPage extends StatelessWidget {
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
                        MaterialPageRoute(builder: (context) => StudyDetail()),
                      );
                    },
                    child: StudyDetailCard(
                      StudyDetailModels(
                          id: 1,
                          imageUrl: 'assets/icon/ic_file-dock-1.svg',
                          title: 'Pertemuan 1',
                          caption: '20 Agustus'),
                    ),
                  ),
                  StudyDetailCard(
                    StudyDetailModels(
                        id: 2,
                        imageUrl: 'assets/icon/ic_file-dock-1.svg',
                        title: 'Pertemuan 2',
                        caption: '20 Agustus'),
                  ),
                  StudyDetailCard(
                    StudyDetailModels(
                        id: 3,
                        imageUrl: 'assets/icon/ic_file-dock-1.svg',
                        title: 'Pertemuan 3',
                        caption: '30 Agustus'),
                  ),
                  StudyDetailCard(
                    StudyDetailModels(
                        id: 4,
                        imageUrl: 'assets/icon/ic_file-dock-1.svg',
                        title: 'Pertemuan 4',
                        caption: '30 mei'),
                  ),
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
        icon: SvgPicture.asset(
          'assets/icon/ic_back_white.svg',
        ),
      ),
      centerTitle: true,
      title: Text(
        'Mata Kuliah',
        style: appBarStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/pages/not_found_page.dart';
import 'package:salamapps/pages/user/krs/khs_page.dart';
import 'package:salamapps/pages/user/krs/transcript_value_page.dart';
import 'package:salamapps/pages/user/seminar_page.dart';
import 'package:salamapps/pages/user/study_info_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/admin/academic_card.dart';
import 'package:salamapps/widgets/shared/bottom_navbar.dart';
import 'package:salamapps/models/admin/academic_page_models.dart';

class AcademicServicesPage extends StatelessWidget {
  const AcademicServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: edge,
              right: edge,
            ),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 600,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 1,
                      ),
                      children: [
                        AcademicCard(
                          AcademicModels(
                              id: 1,
                              color: redColor,
                              name: "KRS",
                              imageUrl: 'assets/images/Form_fill 1.png'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => KhsPage(),
                              ),
                            );
                          },
                          child: AcademicCard(
                            AcademicModels(
                                id: 2,
                                color: blackColor,
                                name: "KHS",
                                imageUrl: 'assets/images/Form_fill 1.png'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TranscriptValuePage(),
                              ),
                            );
                          },
                          child: AcademicCard(
                            AcademicModels(
                                id: 3,
                                color: purpleColor,
                                name: "Transkrip Nilai",
                                imageUrl: 'assets/images/Form_fill 1.png'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudyInfoPage(),
                              ),
                            );
                          },
                          child: AcademicCard(
                            AcademicModels(
                                id: 4,
                                color: orangeColor,
                                name: "Mata Kuliah",
                                imageUrl: 'assets/images/Form_fill 1.png'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SeminarPage(),
                              ),
                            );
                          },
                          child: AcademicCard(
                            AcademicModels(
                                id: 5,
                                color: greenColor,
                                name: "Sidang & Seminar",
                                imageUrl: 'assets/images/Form_fill 1.png'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotFoundPage(),
                              ),
                            );
                          },
                          child: AcademicCard(
                            AcademicModels(
                                id: 6,
                                color: greenColor,
                                name: "Bimbingan Praktek",
                                imageUrl: 'assets/images/Form_fill 1.png'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotFoundPage(),
                              ),
                            );
                          },
                          child: AcademicCard(
                            AcademicModels(
                                id: 7,
                                color: blueColor,
                                name: "Info Mata Kuliah",
                                imageUrl: 'assets/images/Form_fill 1.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
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
        'Akademik',
        style: appBarStyle,
      ),
    );
  }
}

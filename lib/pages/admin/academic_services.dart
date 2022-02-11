import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/admin/academic_page_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/admin/academic_card.dart';
import 'package:salamapps/widgets/shared/bottom_navbar.dart';

class AcademicServices extends StatefulWidget {
  @override
  _AcademicServicesState createState() => _AcademicServicesState();
}

class _AcademicServicesState extends State<AcademicServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: blueColor2,
        elevation: 0,
        leading: FlatButton(
            onPressed: () {},
            child: SvgPicture.asset('assets/icon/ic_back_white.svg')),
        title: Text(
          'Akademik',
          style: TextStyle(color: backgroundColor),
        ),
      ),
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
                        AcademicCard(AcademicModels(
                            id: 1,
                            color: blackColor,
                            name: 'Dashboard Prodi',
                            imageUrl: 'assets/images/Form_fill 1.png')),
                        AcademicCard(AcademicModels(
                            id: 2,
                            color: redColor,
                            name: 'Profil Prodi',
                            imageUrl:
                                'assets/images/File_dock_add_fill 1.png')),
                        AcademicCard(AcademicModels(
                            id: 3,
                            color: purpleColor,
                            name: 'Evaluasi Akademik',
                            imageUrl: 'assets/images/File_fill 1.png')),
                        AcademicCard(AcademicModels(
                            id: 4,
                            color: greyColor,
                            name: 'Sidang & Seminar',
                            imageUrl: 'assets/images/File_fill 1.png')),
                        AcademicCard(AcademicModels(
                            id: 5,
                            color: orangeColor,
                            name: 'Praktek Ibadah',
                            imageUrl: 'assets/images/File_fill 1.png')),
                        AcademicCard(AcademicModels(
                            id: 6,
                            color: blueColor,
                            name: 'RPS ASIIN',
                            imageUrl: 'assets/images/File_fill 1.png')),
                        AcademicCard(AcademicModels(
                            id: 7,
                            color: Colors.green,
                            name: 'SALAM',
                            imageUrl: 'assets/images/File_fill 1.png')),
                        AcademicCard(AcademicModels(
                            id: 8,
                            color: blueColor2,
                            name: 'Mata Kuliah',
                            imageUrl: 'assets/images/File_fill 1.png')),
                        AcademicCard(AcademicModels(
                            id: 9,
                            color: blueColor2,
                            name: 'Layanan Bantuan',
                            imageUrl: 'assets/images/File_fill 1.png')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

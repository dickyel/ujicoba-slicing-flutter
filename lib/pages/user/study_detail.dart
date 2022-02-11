import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:salamapps/pages/user/quiz/main_menu.dart';
import 'package:salamapps/pages/user/signature_page.dart';
import 'package:salamapps/pages/user/study_detail_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class StudyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Color(0xff03021B),
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                      vertical: edge,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Praktikum Pembelajaran Mesin',
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Pertemuan 1',
                            style: TextStyle(
                              color: backgroundColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignaturePage()),
                            );
                          },
                          child: Text('Isi Absen'),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                  right: edge,
                  top: 15,
                ),
                child: Column(
                  children: [
                    Text(
                        'lorem ipsum adalah teks yang digunakan untuk ujicoba dalam website dan copywriting.lorem ipsum adalah teks yang digunakan untuk ujicoba dalam website dan copywriting.lorem ipsum adalah teks yang digunakan untuk ujicoba dalam website dan copywriting.lorem ipsum adalah teks yang digunakan untuk ujicoba dalam website dan copywriting'),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 52,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Materi Pertemuan 1',
                          style: TextStyle(
                              color: backgroundColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        color: blueColor2,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 52,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Materi Video',
                          style: TextStyle(
                              color: backgroundColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        color: blueColor2,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 52,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Kumpulkan Tugas',
                          style: TextStyle(
                              color: backgroundColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        color: blueColor2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 52,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainMenu(),
                            ),
                          );
                        },
                        child: Text(
                          'Kerjakan Kuis',
                          style: TextStyle(
                              color: backgroundColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        color: blueColor2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
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
        icon: SvgPicture.asset(
          'assets/icon/ic_back_white.svg',
        ),
      ),
      centerTitle: true,
      title: Text(
        'Detail',
        style: appBarStyle,
      ),
    );
  }
}

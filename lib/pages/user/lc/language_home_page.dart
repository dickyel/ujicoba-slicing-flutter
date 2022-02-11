import 'package:flutter/material.dart';
import 'package:salamapps/models/admin/academic_page_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/admin/academic_card.dart';
import 'package:salamapps/pages/user/home_page.dart';

class LanguageHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040C1E),
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(edge),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        icon: Icon(
                          Icons.home,
                          color: backgroundColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Courses Language',
                        style: TextStyle(
                            fontSize: 35,
                            color: backgroundColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'UIN SUNAN GUNUNG DJATI BANDUNG',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: backgroundColor,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 550,
                  width: double.infinity,
                  padding: EdgeInsets.all(edge),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('Menu Utama'),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 400,
                        child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 1,
                          ),
                          children: [
                            AcademicCard(
                              AcademicModels(
                                  id: 1,
                                  color: redColor,
                                  name: "Kursus Inggris",
                                  imageUrl: 'assets/images/Form_fill 1.png'),
                            ),
                            AcademicCard(
                              AcademicModels(
                                  id: 2,
                                  color: blackColor,
                                  name: "Kursus Arab",
                                  imageUrl: 'assets/images/Form_fill 1.png'),
                            ),
                            AcademicCard(
                              AcademicModels(
                                  id: 3,
                                  color: blackColor,
                                  name: "Kursus ICT",
                                  imageUrl: 'assets/images/Form_fill 1.png'),
                            ),
                            AcademicCard(
                              AcademicModels(
                                  id: 4,
                                  color: purpleColor,
                                  name: "TOEFL",
                                  imageUrl: 'assets/images/Form_fill 1.png'),
                            ),
                            AcademicCard(
                              AcademicModels(
                                  id: 5,
                                  color: greenColor,
                                  name: "TOAFL",
                                  imageUrl: 'assets/images/Form_fill 1.png'),
                            ),
                            AcademicCard(
                              AcademicModels(
                                  id: 6,
                                  color: blackColor,
                                  name: "Tes ICT",
                                  imageUrl: 'assets/images/Form_fill 1.png'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

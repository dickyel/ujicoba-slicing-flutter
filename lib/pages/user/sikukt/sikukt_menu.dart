import 'package:flutter/material.dart';
import 'package:salamapps/models/admin/academic_page_models.dart';
import 'package:salamapps/pages/user/sikukt/file_upload_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/admin/academic_card.dart';
import 'package:salamapps/pages/user/home_page.dart';

class SikuktMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff02C6CB),
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
                        'SIKUKT',
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
                            color: backgroundColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 400,
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
                        height: 300,
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
                                  name: "Pengumuman",
                                  imageUrl: 'assets/images/Form_fill 1.png'),
                            ),
                            AcademicCard(
                              AcademicModels(
                                  id: 2,
                                  color: blackColor,
                                  name: "Syarat & Ketentuan",
                                  imageUrl: 'assets/images/Form_fill 1.png'),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FileUploadPage(),
                                  ),
                                );
                              },
                              child: AcademicCard(
                                AcademicModels(
                                    id: 3,
                                    color: purpleColor,
                                    name: "Input Berkas",
                                    imageUrl: 'assets/images/Form_fill 1.png'),
                              ),
                            ),
                            AcademicCard(
                              AcademicModels(
                                  id: 4,
                                  color: greenColor,
                                  name: "Status Berkas",
                                  imageUrl: 'assets/images/Form_fill 1.png'),
                            ),
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

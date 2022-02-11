import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                  right: edge,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kelompok 1'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  child: Column(children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/alan1.jpg',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            left: 20,
                          ),
                          fillColor: whiteColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Nama Pembimbing',
                          hintStyle: hintStyleLogin,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            left: 20,
                          ),
                          fillColor: whiteColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Kontak Pembimbing',
                          hintStyle: hintStyleLogin,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                  right: edge,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Tambah Anggota'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge, right: edge),
                child: Row(
                  children: [
                    Container(
                      child: Column(children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/alan1.jpg',
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                left: 20,
                              ),
                              fillColor: whiteColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Nama ',
                              hintStyle: hintStyleLogin,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                left: 20,
                              ),
                              fillColor: whiteColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'NIM',
                              hintStyle: hintStyleLogin,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                left: 20,
                              ),
                              fillColor: whiteColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Nilai',
                              hintStyle: hintStyleLogin,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              )
            ]),
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
        'Tambah Anggota Praktik Ibadah',
        style: appBarStyle,
      ),
    );
  }
}

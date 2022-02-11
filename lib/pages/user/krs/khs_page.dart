import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/shared/edit_dropdown_card.dart';

class KhsPage extends StatefulWidget {
  const KhsPage({Key? key}) : super(key: key);

  @override
  _KhsPageState createState() => _KhsPageState();
}

class _KhsPageState extends State<KhsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Keterangan ',
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text.rich(
                      TextSpan(
                          text:
                              'Kartu Hasil Studi merupakan fasilitas yang dapat digunakan untuk melihat hasil studi mahasiswa persemester.Selain dapat dilihat secara online, hasil studi ini juga dapat dicetak.'),
                    ),
                    Divider(
                      color: greyColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Semester',
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    EditDropdownCard(),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: RawMaterialButton(
                        onPressed: () {},
                        fillColor: blueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Lihat',
                            style: TextStyle(
                                color: backgroundColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
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
        icon: SvgPicture.asset('assets/icon/ic_back_white.svg'),
      ),
      centerTitle: true,
      title: Text(
        'Kartu Hasil Studi',
        style: appBarStyle,
      ),
    );
  }
}

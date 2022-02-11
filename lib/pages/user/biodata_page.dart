import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/app_bar_back_models.dart';
import 'package:salamapps/models/textfield/textfield_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/app_bar_card.dart';
import 'package:salamapps/widgets/shared/edit_textfield_card.dart';

class BiodataPage extends StatefulWidget {
  const BiodataPage({Key? key}) : super(key: key);

  @override
  _BiodataPageState createState() => _BiodataPageState();
}

class _BiodataPageState extends State<BiodataPage> {
  String? _selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              EditTextfieldCard(
                TextfieldModels(
                  id: 1,
                  title: 'Nama Lengkap',
                  name: 'Muhammad Dikky Purwanto',
                ),
              ),
              EditTextfieldCard(
                TextfieldModels(
                  id: 2,
                  title: 'NIM',
                  name: '1187050067',
                ),
              ),
              EditTextfieldCard(
                TextfieldModels(
                  id: 3,
                  title: 'NIK',
                  name: '11879050067',
                ),
              ),
              EditTextfieldCard(
                TextfieldModels(
                  id: 4,
                  title: 'Jurusan',
                  name: 'Teknik Informatika',
                ),
              ),
              EditTextfieldCard(
                TextfieldModels(
                  id: 5,
                  title: 'Alamat',
                  name: 'Cilegon',
                ),
              ),
              EditTextfieldCard(
                TextfieldModels(
                  id: 6,
                  title: 'Angkatan',
                  name: '11879050067',
                ),
              ),
              EditTextfieldCard(
                TextfieldModels(
                  id: 7,
                  title: 'Nomor Telepon',
                  name: '11879050067',
                ),
              ),
              EditTextfieldCard(
                TextfieldModels(
                  id: 8,
                  title: 'Email',
                  name: 'muhammad.dicky7@gmail.com',
                ),
              ),
              EditTextfieldCard(
                TextfieldModels(
                  id: 9,
                  title: 'Username Telegram',
                  name: 'mudicky7',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                  right: edge,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        color: greyColor2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Edit',
                          style: buttonTextStyle,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        color: blueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Simpan',
                          style: buttonTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
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
        'Biodata Diri',
        style: appBarStyle,
      ),
    );
  }
}

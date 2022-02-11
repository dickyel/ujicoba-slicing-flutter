import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/app_bar_back_models.dart';
import 'package:salamapps/models/textfield/textfield_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/app_bar_card.dart';
import 'package:salamapps/widgets/shared/edit_dropdown_card.dart';
import 'package:salamapps/widgets/shared/edit_textfield_card.dart';

class BiodataOrangTuaPage extends StatefulWidget {
  const BiodataOrangTuaPage({Key? key}) : super(key: key);

  @override
  _BiodataOrangTuaPageState createState() => _BiodataOrangTuaPageState();
}

class _BiodataOrangTuaPageState extends State<BiodataOrangTuaPage> {
  @override
  List<String> tgl = ["Tgl 1", "Tgl 2", "Tgl 3", "Tgl 4"];
  List<String> pekerjaan = ["Wiraswasta", "Ibu Rumah Tangga", "PNS", "Tentara"];
  List<String> penghasilan = [
    "500.000 - 1.000.000",
    "1.000.000 - 2.000.000",
    "3.000.000 - 4.000.000",
    "5.000.000 - keatas"
  ];
  String? _selectedColor;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: buildAppBar(),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              EditTextfieldCard(TextfieldModels(
                  id: 1, title: 'Nama Ayah', name: 'SAYA ORTU')),
              EditTextfieldCard(
                  TextfieldModels(id: 2, title: 'NIK', name: 'SAYA ORTU')),
              EditTextfieldCard(
                  TextfieldModels(id: 3, title: 'Alamat', name: 'SAYA ORTU')),
              EditTextfieldCard(TextfieldModels(
                  id: 4, title: 'Email Ortu', name: 'SAYA ORTU')),
              EditTextfieldCard(TextfieldModels(
                  id: 5, title: 'Nomor telepon', name: 'SAYA ORTU')),
              // tgl lahir ayah

              Padding(
                padding: EdgeInsets.only(left: edge, right: edge, top: 15),
                child: DropdownButton<String>(
                  hint: Text(
                    'Tahun Tanggal Lahir',
                    style: biodataHint,
                  ),
                  dropdownColor: backgroundColor,
                  elevation: 5,
                  icon: SvgPicture.asset(
                    'assets/icon/ic_dropdown.svg',
                  ),
                  iconSize: 24,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                  value: _selectedColor,
                  items: tgl.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              // pekerjaan

              Padding(
                padding: EdgeInsets.only(left: edge, right: edge, top: 15),
                child: DropdownButton<String>(
                  hint: Text(
                    'Pekerjaan',
                    style: biodataHint,
                  ),
                  dropdownColor: backgroundColor,
                  elevation: 5,
                  icon: SvgPicture.asset(
                    'assets/icon/ic_dropdown.svg',
                  ),
                  iconSize: 24,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                  value: _selectedColor,
                  items: pekerjaan.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              // gaji ortu

              Padding(
                padding: EdgeInsets.only(left: edge, right: edge, top: 15),
                child: DropdownButton<String>(
                  hint: Text(
                    'Penghasilan',
                    style: biodataHint,
                  ),
                  dropdownColor: backgroundColor,
                  elevation: 5,
                  icon: SvgPicture.asset(
                    'assets/icon/ic_dropdown.svg',
                  ),
                  iconSize: 24,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                  value: _selectedColor,
                  items: penghasilan.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              EditTextfieldCard(
                  TextfieldModels(id: 6, title: 'Nama Ibu', name: 'SAYA ORTU')),
              EditTextfieldCard(
                  TextfieldModels(id: 7, title: 'NIK', name: 'SAYA ORTU')),
              EditTextfieldCard(
                  TextfieldModels(id: 8, title: 'Alamat', name: 'SAYA ORTU')),
              EditTextfieldCard(TextfieldModels(
                  id: 9, title: 'Nama Ayah', name: 'SAYA ORTU')),
              EditTextfieldCard(TextfieldModels(
                  id: 10, title: 'Nomor telepon', name: 'SAYA ORTU')),
              // tgl lahir ayah

              Padding(
                padding: EdgeInsets.only(left: edge, right: edge, top: 15),
                child: DropdownButton<String>(
                  hint: Text(
                    'Tahun Tanggal Lahir',
                    style: biodataHint,
                  ),
                  dropdownColor: backgroundColor,
                  elevation: 5,
                  icon: SvgPicture.asset(
                    'assets/icon/ic_dropdown.svg',
                  ),
                  iconSize: 24,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                  value: _selectedColor,
                  items: tgl.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              // pekerjaan

              Padding(
                padding: EdgeInsets.only(left: edge, right: edge, top: 15),
                child: DropdownButton<String>(
                  hint: Text(
                    'Pekerjaan',
                    style: biodataHint,
                  ),
                  dropdownColor: backgroundColor,
                  elevation: 5,
                  icon: SvgPicture.asset(
                    'assets/icon/ic_dropdown.svg',
                  ),
                  iconSize: 24,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                  value: _selectedColor,
                  items: pekerjaan.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              // gaji ortu

              Padding(
                padding: EdgeInsets.only(left: edge, right: edge, top: 15),
                child: DropdownButton<String>(
                  hint: Text(
                    'Penghasilan',
                    style: biodataHint,
                  ),
                  dropdownColor: backgroundColor,
                  elevation: 5,
                  icon: SvgPicture.asset(
                    'assets/icon/ic_dropdown.svg',
                  ),
                  iconSize: 24,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                  value: _selectedColor,
                  items: penghasilan.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
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
                          'Cancel',
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
        'Biodata Orang Tua',
        style: appBarStyle,
      ),
    );
  }
}

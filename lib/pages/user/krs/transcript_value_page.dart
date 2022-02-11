import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animate_do/animate_do.dart';

class TranscriptValuePage extends StatefulWidget {
  const TranscriptValuePage({Key? key}) : super(key: key);

  @override
  _TranscriptValuePageState createState() => _TranscriptValuePageState();
}

class _TranscriptValuePageState extends State<TranscriptValuePage> {
  List<String> transkrip = [
    "IP Sementara",
    "IPK Keseluruhan",
  ];
  String? _selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDown(
                child: Padding(
                  padding: EdgeInsets.all(edge),
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
                                'Transkrip nilai adalah nilai keseluruhan hasil yang diperoleh mahasiswa dalam melakukan pembelajaran'),
                      ),
                      Divider(
                        color: greyColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Transkrip',
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      DropdownButton<String>(
                        hint: Text(
                          'Pilih',
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
                        items: transkrip.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
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
        icon: SvgPicture.asset('assets/icon/ic_back_white.svg'),
      ),
      centerTitle: true,
      title: Text(
        'Transkrip Nilai',
        style: appBarStyle,
      ),
    );
  }
}

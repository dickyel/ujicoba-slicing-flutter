import 'package:flutter/material.dart';
import 'package:salamapps/models/admin/nilai_praktik%20ibadah.dart';
import 'package:salamapps/widgets/admin/input_nilai_card.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputNilaiPrayer extends StatelessWidget {
  const InputNilaiPrayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    child: Column(
                      children: [
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
                        SizedBox(height: 8),
                        Text('Nama Mahasiswa'),
                        SizedBox(height: 5),
                        Text('1187050067'),
                        SizedBox(
                          height: 30,
                        ),
                        Text('Input Nilai :')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge, right: edge, top: 16),
                  child: Container(
                    height: 400,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputNilaiCard(NilaiPraktikIbadah(
                            id: 1,
                            title: 'Thaharah',
                            nilai: '80',
                            note: 'mantap')),
                        SizedBox(height: 10),
                        InputNilaiCard(NilaiPraktikIbadah(
                          id: 2,
                          title: 'Shalat Wajib',
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        InputNilaiCard(
                            NilaiPraktikIbadah(id: 3, title: 'Jenazah')),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 30,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('Simpan')),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
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
        'Input Nilai Praktik Ibadah',
        style: appBarStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/riwayat.dart';
import 'package:salamapps/widgets/riwayat_pesan.dart';

class RiwayatPesanPage extends StatefulWidget {
  const RiwayatPesanPage({Key? key}) : super(key: key);

  @override
  _RiwayatPesanPageState createState() => _RiwayatPesanPageState();
}

class _RiwayatPesanPageState extends State<RiwayatPesanPage> {
  List<RiwayatPesan> riwayatPesan = [
    RiwayatPesan(
      text: 'Rifki, ST',
      secondaryText: 'Sip, Lah !!',
      imageUrl: 'assets/images/fot_profile.png',
      time: 'kemarin',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Chats',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Chat Dosen anda dengan sopan santun',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 220,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Color(0xffF6F0F0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'Kontak Dosen',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff242222),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 220,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Color(0xff12317C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              ' Riwayat Pesan',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xffFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 16,
              ),
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return RiwayatPesanList(
                  text: 'Rifki',
                  secondaryText: 'Mantap',
                  imageUrl: 'assets/images/foto_profile.png',
                  time: 'Kemarin',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

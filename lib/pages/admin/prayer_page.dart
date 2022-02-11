import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrayerPageAdmin extends StatefulWidget {
  const PrayerPageAdmin({Key? key}) : super(key: key);

  @override
  _PrayerPageAdminState createState() => _PrayerPageAdminState();
}

class _PrayerPageAdminState extends State<PrayerPageAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge, right: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [Icon(Icons.add), Text('Add')],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.edit_attributes_rounded),
                          Text('Edit')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [Icon(Icons.delete), Text('Hapus')],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: edge, right: edge, top: 10),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.people_alt_rounded),
                        Text('kelompok 1')
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
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
        'Bimbingan Praktek Ibadah',
        style: appBarStyle,
      ),
    );
  }
}

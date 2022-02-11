import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/kontakdosen.dart';

class KontakDosenCard extends StatelessWidget {
  final infoKontak kontak;
  KontakDosenCard(this.kontak);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 100,
        child: Row(
          children: [
            SizedBox(height: 20),
            SvgPicture.asset(
              kontak.imageUrl,
            ),
            SizedBox(
              width: 10,
            ),
            Text(kontak.name),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              onPressed: () {},
              child: SvgPicture.asset(kontak.iconMessage),
            ),
            SizedBox(
              width: 5,
            ),
            RaisedButton(
              onPressed: () {},
              child: SvgPicture.asset(kontak.iconWa),
            ),
          ],
        ),
      ),
    );
  }
}

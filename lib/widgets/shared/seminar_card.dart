import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/seminar/seminar_models.dart';

class SeminarCard extends StatelessWidget {
  final SeminarModels info;
  SeminarCard(this.info);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 1,
      child: Container(
        height: 40,
        margin: EdgeInsets.all(24),
        child: Row(
          children: [
            SvgPicture.asset(
              info.imageUrl,
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(info.title),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/study/study_detail_models.dart';

class StudyDetailCard extends StatelessWidget {
  final StudyDetailModels info;
  StudyDetailCard(this.info);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 1,
      child: Container(
        margin: EdgeInsets.all(24),
        child: Row(
          children: [
            SvgPicture.asset(
              info.imageUrl,
              width: 30,
              height: 30,
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
                Text(
                  info.title,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: blackColor),
                ),
                SizedBox(
                  height: 4,
                ),
                Text.rich(
                  TextSpan(
                      text: info.caption,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: greyColor)),
                  maxLines: 2,
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

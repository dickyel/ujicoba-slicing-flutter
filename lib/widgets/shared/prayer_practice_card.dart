import 'package:flutter/material.dart';
import 'package:salamapps/models/prayer-practice/prayer_practice_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class PrayerPracticeCard extends StatelessWidget {
  final PrayerPracticeModels prayer_practice;
  PrayerPracticeCard(this.prayer_practice);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Padding(
        padding: EdgeInsets.only(top: 5, left: edge, right: edge),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  prayer_practice.surat,
                  style: infoPracticePrayerTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  prayer_practice.nilai,
                  style: infoPracticePrayerTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  prayer_practice.status,
                  style: seeDetailTextStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

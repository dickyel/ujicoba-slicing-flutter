import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/info.dart';

class InfoCard extends StatelessWidget {
  final Info info;
  InfoCard(this.info);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          child: Container(
            width: 90,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(info.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info.title,
              style: userTextStyle,
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                text: info.caption,
                style: captionInfoTextStyle,
              ),
            )
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:salamapps/models/admin/group_detail_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class GroupCard extends StatelessWidget {
  final GroupDetail detail_group;
  GroupCard(this.detail_group);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            child: Container(
          width: 130,
          height: 70,
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(detail_group.imageUrl),
              )
            ],
          ),
        )),
        SizedBox(
          width: 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              detail_group.name,
              style: userTextStyle,
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                text: detail_group.nim,
                style: userTextStyle,
              ),
            ),
          ],
        )
      ],
    );
  }
}

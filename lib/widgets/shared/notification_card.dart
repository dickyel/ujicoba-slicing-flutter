import 'package:flutter/material.dart';
import 'package:salamapps/models/notification/notification_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModels notification;
  NotificationCard(this.notification);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              notification.imageUrl,
              width: 50,
              height: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.titleNotification,
                  style: TextStyle(
                      color: greyColor2,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  notification.pesan,
                  style: TextStyle(
                    color: blueColor2,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Spacer(),
            Text(
              notification.time,
              style: TextStyle(
                  color: greyColor, fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class NotifikasiPage extends StatefulWidget {
  const NotifikasiPage({Key? key}) : super(key: key);

  @override
  _NotifikasiPageState createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  String title = 'title';
  String content = 'content';
  @override
  void initState() {
    super.initState();
    OneSignal.shared.setNotificationWillShowInForegroundHandler(
        (OSNotificationReceivedEvent event) {
      // Will be called whenever a notification is received in foreground
      // Display Notification, pass null param for not displaying the notification

      setState(() {
        // title = notification.payload.title;
      });
      event.complete(event.notification);
    });

    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      // Will be called whenever a notification is opened/button pressed.
      print('notifikasi sudah di tap');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('One Signal Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(title),
            SizedBox(
              height: 20,
            ),
            Text(content)
          ],
        ),
      ),
    );
  }
}

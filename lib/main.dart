import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salamapps/pages/admin/academic_services.dart';
import 'package:salamapps/pages/admin/add_member.dart';
import 'package:salamapps/pages/admin/detail_group.dart';
import 'package:salamapps/pages/admin/home_page_admin.dart';
import 'package:salamapps/pages/admin/input_nilai_prayer.dart';
import 'package:salamapps/pages/admin/prayer_page.dart';
import 'package:salamapps/pages/not_found_page.dart';
import 'package:salamapps/pages/reset_password_page.dart';
import 'package:salamapps/pages/user/academic_services_page.dart';
import 'package:salamapps/pages/user/biodata_orang_tua_page.dart';
import 'package:salamapps/pages/user/create_event_page.dart';
import 'package:salamapps/pages/user/help_services_page.dart';
import 'package:salamapps/pages/user/krs/khs_page.dart';
import 'package:salamapps/pages/user/lc/language_splash_page.dart';
import 'package:salamapps/pages/user/news_detail_page.dart';
import 'package:salamapps/pages/user/news_page.dart';
import 'package:salamapps/pages/user/notifikasi_page.dart';
import 'package:salamapps/pages/user/progress_page.dart';

import 'package:salamapps/pages/user/biodata_page.dart';

import 'package:salamapps/pages/user/home_page.dart';

import 'package:salamapps/pages/login_page.dart';
import 'package:salamapps/pages/user/notification_page.dart';
import 'package:salamapps/pages/opening_page.dart';
import 'package:salamapps/pages/user/prayer_practice_page.dart';
import 'package:salamapps/pages/user/profile_page.dart';
import 'package:salamapps/pages/user/riwayat_pesan_page.dart';
import 'package:salamapps/pages/splash_page_one.dart';
import 'package:salamapps/pages/splash_page_tree.dart';
import 'package:salamapps/pages/splash_page_two.dart';
import 'package:salamapps/pages/user/search_page.dart';
import 'package:salamapps/pages/user/seminar_page.dart';
import 'package:salamapps/pages/user/signature_page.dart';
import 'package:salamapps/pages/user/sikukt/file_upload_page.dart';
import 'package:salamapps/pages/user/sikukt/sikukt_home_page.dart';
import 'package:salamapps/pages/user/sikukt/sikukt_menu.dart';
import 'package:salamapps/pages/user/study_detail.dart';
import 'package:salamapps/pages/user/study_detail_page.dart';
// import 'package:salamapps/pages/user/telegram_bot_page.dart';
import 'package:salamapps/pages/user/wiki_search_page.dart';
import 'package:salamapps/widgets/shared/picker_card.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // //Remove this method to stop OneSignal Debugging
  // OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  // OneSignal.shared.setAppId("fb33a2b5-0f0b-4bbb-9b42-8c594674b873");

  // // The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  // OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
  //   print("Accepted permission: $accepted");
  // });
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // String title = 'title';
  // String content = 'content';
  // @override
  // void initState() {
  //   super.initState();
  //   OneSignal.shared.setNotificationWillShowInForegroundHandler(
  //       (OSNotificationReceivedEvent event) {
  //     // Will be called whenever a notification is received in foreground
  //     // Display Notification, pass null param for not displaying the notification

  //     setState(() {});
  //     event.complete(event.notification);
  //   });

  //   OneSignal.shared
  //       .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
  //     // Will be called whenever a notification is opened/button pressed.
  //     print('notifikasi ditap');
  //   });
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // home: NotifikasiPage(),
      // theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      // appBar: AppBar(
      //   title: Text('One Signal Demo'),
      // ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       Text(title),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Text(content)
      //     ],
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // extendBody: true,
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   padding: EdgeInsets.all(20),
      //   color: Color(0xff8186F0),
      //  child: Center(child: Box()),
      // ),
    );
  }
}
// untuk notifikasi
// @override
// void initState() {
//   super.initState();
//   configOneSignel();
// }

// void configOneSignel() {
//   // OneSignal.shared.init('7d108336-42a4-4e9f-9a23-6105dd125a74');
//   OneSignal.shared.setAppId('0c788947-37b7-4516-a337-903ada6eedd1');
// }

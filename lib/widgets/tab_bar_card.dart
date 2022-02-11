import 'package:flutter/material.dart';

import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/app_bar_back_models.dart';

class TabBarCard extends StatelessWidget {
  final AppBarBackModels navbar_back;
  TabBarCard(this.navbar_back);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                navbar_back.iconBack,
              ),
            ),
            Center(
              child: Text(navbar_back.statusTitle),
            ),
            SizedBox(
              height: 10,
            ),
            TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Tugas',
                ),
                Tab(
                  text: 'Chats',
                ),
                Tab(text: 'Recents'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

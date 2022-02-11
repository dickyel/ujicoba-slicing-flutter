import 'package:flutter/material.dart';

import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/app_bar_back_models.dart';

class IconBackCard extends StatelessWidget {
  final AppBarBackModels navbar_back;
  IconBackCard(this.navbar_back);
  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
    );
  }
}

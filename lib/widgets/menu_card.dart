import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:salamapps/models/main_menu/menu.dart';

class MenuCard extends StatelessWidget {
  final Menu menu;
  MenuCard(this.menu);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
          height: 148,
          width: 160,
          color: menu.color,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                menu.imageUrl,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                menu.name,
                style: captionMenuTextStyle,
              ),
            ],
          )),
    );
  }
}

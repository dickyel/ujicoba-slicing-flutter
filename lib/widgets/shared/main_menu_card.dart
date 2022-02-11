import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/main_menu/menu_models.dart';

class MainMenuCard extends StatelessWidget {
  final MenuModels main_menu;
  MainMenuCard(this.main_menu);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      child: Card(
          margin: EdgeInsets.all(6),
          color: main_menu.color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    main_menu.imageUrl,
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    main_menu.name,
                    style: mainMenuStyle.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

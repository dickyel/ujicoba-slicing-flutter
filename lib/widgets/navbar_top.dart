import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class NavbarTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.only(left: edge, right: edge, top: 30),
      decoration: BoxDecoration(
        color: backgroundDashboard,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/foto_profile.png',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Hi, Muhammad Dikky Purwanto',
                    style: nameTextStyle,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/darhboard_alt.svg',
                  height: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

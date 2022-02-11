import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/admin/admin_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class DashboardCard extends StatelessWidget {
  final AdminHome admin;
  DashboardCard(this.admin);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      child: Card(
        margin: EdgeInsets.all(6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: admin.color,
        child: InkWell(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  admin.imageUrl,
                  height: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  admin.name,
                  style: cardTitleTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

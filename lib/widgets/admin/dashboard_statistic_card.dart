import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/admin/admin_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/admin/statistik_detail_models.dart';

class StatisticDashboardCard extends StatelessWidget {
  final StatisticDetailHome statistic_detail_homepage;
  StatisticDashboardCard(this.statistic_detail_homepage);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 86,
      child: Card(
        margin: EdgeInsets.all(6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: statistic_detail_homepage.color,
        child: InkWell(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  statistic_detail_homepage.jumlah,
                  style: infoStatisticTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  statistic_detail_homepage.name,
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/seminar/progress_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/info.dart';

class ProgressCard extends StatelessWidget {
  final ProgressModels progress;
  ProgressCard(this.progress);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: progress.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Container(
              width: 50,
              height: 50,
              color: backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        progress.imageUrl,
                        width: 30,
                        height: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                progress.titleProgress,
                style: TextStyle(
                  color: backgroundColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                maxLines: 4,
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: progress.dosen,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: backgroundColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

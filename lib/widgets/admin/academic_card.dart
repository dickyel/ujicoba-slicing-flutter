import 'package:flutter/material.dart';
import 'package:salamapps/models/admin/academic_page_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/admin/academic_page_models.dart';

class AcademicCard extends StatelessWidget {
  final AcademicModels academic_models;
  AcademicCard(this.academic_models);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(6),
        color: academic_models.color,
        child: InkWell(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  academic_models.imageUrl,
                  height: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  academic_models.name,
                  style: mainMenuStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

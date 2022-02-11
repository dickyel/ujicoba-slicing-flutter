import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class PickerCard extends StatelessWidget {
  const PickerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Selected File',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(0, 1),
                    blurRadius: 3,
                    spreadRadius: 2,
                  )
                ]),
          )
        ],
      ),
    );
  }
}

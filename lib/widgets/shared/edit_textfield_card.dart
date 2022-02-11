import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/textfield/textfield_models.dart';

class EditTextfieldCard extends StatelessWidget {
  final TextfieldModels field;
  EditTextfieldCard(this.field);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: edge,
              right: edge,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(field.title),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: edge,
              right: edge,
            ),
            child: Center(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        left: 20,
                      ),
                      fillColor: whiteColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      hintText: field.name,
                      hintStyle: hintStyleLogin,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

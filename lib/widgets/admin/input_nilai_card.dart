import 'package:flutter/material.dart';
import 'package:salamapps/models/admin/nilai_praktik%20ibadah.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class InputNilaiCard extends StatelessWidget {
  final NilaiPraktikIbadah field;
  InputNilaiCard(this.field);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              field.title,
              maxLines: 1,
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Container(
              height: 50,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    left: 20,
                  ),
                  fillColor: whiteColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  hintText: field.nilai,
                  hintStyle: hintStyleLogin,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    left: 20,
                  ),
                  fillColor: whiteColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  hintText: field.note,
                  hintStyle: hintStyleLogin,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

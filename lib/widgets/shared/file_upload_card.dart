import 'package:flutter/material.dart';
import 'package:salamapps/models/file-upload/file_upload_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:dotted_border/dotted_border.dart';

class FileUploadCard extends StatelessWidget {
  final FileUploadModels file;
  FileUploadCard(this.file);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(file.title),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 200,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(10),
                  padding: EdgeInsets.zero,
                  color: backgroundColor,
                  strokeWidth: 3,
                  dashPattern: [8, 4],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud_upload,
                          size: 30,
                          color: backgroundColor,
                        ),
                        Text(
                          'Upload File',
                          style: TextStyle(color: backgroundColor),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          label: Text('Pilih Files'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: edge),
                            primary: blueColor2,
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text.rich(
                          TextSpan(
                              text: 'Max 3 MB',
                              style: TextStyle(color: backgroundColor)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

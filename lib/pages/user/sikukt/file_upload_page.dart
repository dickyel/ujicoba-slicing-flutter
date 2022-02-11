import 'package:flutter/material.dart';
import 'package:salamapps/models/file-upload/file_upload_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:salamapps/widgets/shared/file_upload_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FileUploadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(edge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lengkapi Berkas Persyaratan Anda'),
                    SizedBox(
                      height: 5,
                    ),
                    Text.rich(
                        TextSpan(text: 'Isi semua file berkas dibawah ini')),
                    SizedBox(
                      height: 10,
                    ),
                    FileUploadCard(FileUploadModels(id: 1, title: 'File KTP')),
                    FileUploadCard(FileUploadModels(id: 2, title: 'File KTM')),
                    FileUploadCard(FileUploadModels(
                        id: 3, title: 'File Tidak Menerima Beasiswa Lain')),
                    FileUploadCard(
                      FileUploadModels(
                          id: 4, title: 'File Keringanan Orang Tua'),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: blueColor2,
      leading: IconButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => StudyDetail()),
          // );
        },
        icon: SvgPicture.asset(
          'assets/icon/ic_back_white.svg',
        ),
      ),
      centerTitle: true,
      title: Text(
        'Input Berkas',
        style: appBarStyle,
      ),
    );
  }
}

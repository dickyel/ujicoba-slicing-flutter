import 'package:flutter/material.dart';
import 'package:salamapps/models/file-upload/file_upload_models.dart';
import 'package:salamapps/models/textfield/textfield_models.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/shared/edit_textfield_card.dart';
import 'package:salamapps/widgets/shared/file_upload_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EditTextfieldCard(
                TextfieldModels(id: 1, title: 'Judul'),
              ),
              EditTextfieldCard(
                TextfieldModels(id: 2, title: 'Penulis'),
              ),
              EditTextfieldCard(
                TextfieldModels(id: 3, title: 'Instansi / Lembaga / Jurusan'),
              ),
              EditTextfieldCard(
                TextfieldModels(id: 4, title: 'Deskripsi Event'),
              ),
              Padding(
                padding: EdgeInsets.all(edge),
                child: FileUploadCard(
                  FileUploadModels(id: 5, title: 'Upload Gambar'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(text: 'Note : file harus berukuran 1920 x 1080'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    color: blueColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Simpan',
                        style: TextStyle(
                          color: backgroundColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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
        onPressed: () {},
        icon: SvgPicture.asset('assets/icon/ic_back_white.svg'),
      ),
      centerTitle: true,
      title: Text(
        'Buat Event',
        style: appBarStyle,
      ),
    );
  }
}

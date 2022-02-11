import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class GuidancePage extends StatefulWidget {
  const GuidancePage({Key? key}) : super(key: key);

  @override
  _GuidancePageState createState() => _GuidancePageState();
}

class _GuidancePageState extends State<GuidancePage> {
  final sampleUrl = 'http://www.africau.edu/images/default/sample.pdf';

  String? pdfFlePath;

  get backgroundColor => null;

  get greyColor2 => null;

  Future<String> downloadAndSavePdf() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/sample.pdf');
    if (await file.exists()) {
      return file.path;
    }
    final response = await http.get(Uri.parse(sampleUrl));
    await file.writeAsBytes(response.bodyBytes);
    return file.path;
  }

  void loadPdf() async {
    pdfFlePath = await downloadAndSavePdf();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child: Text("Load pdf"),
              onPressed: loadPdf,
            ),
            if (pdfFlePath != null)
              Expanded(
                child: Container(
                  child: PdfView(path: pdfFlePath!),
                ),
              )
            else
              Text("Pdf is not Loaded"),
          ],
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
        'Berita',
        style: TextStyle(color: backgroundColor),
      ),
      elevation: 1,
    );
  }
}

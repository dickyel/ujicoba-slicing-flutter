import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/pages/user/study_detail.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:signature/signature.dart';

class SignaturePage extends StatefulWidget {
  @override
  _SignaturePageState createState() => _SignaturePageState();
}

class _SignaturePageState extends State<SignaturePage> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 1,
    penColor: Colors.white,
    exportBackgroundColor: Colors.blue,
    onDrawStart: () => print('onDrawStart called!'),
    onDrawEnd: () => print('onDrawEnd called!'),
  );
  @override
  void initState() {
    super.initState();
    _controller.addListener(() => print('Value changed'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: <Widget>[
          //SIGNATURE CANVAS

          Signature(
            controller: _controller,
            height: 400,
            backgroundColor: blackColor,
          ),

          //OK AND CLEAR BUTTONS
          Container(
            decoration: const BoxDecoration(color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.check),
                  color: Colors.white,
                  onPressed: () async {
                    // if (_controller.isNotEmpty) {
                    //   final Uint8List? data = await _controller.toPngBytes();
                    //   if (data != null) {
                    //     await Navigator.of(context).push(
                    //       MaterialPageRoute<void>(
                    //         builder: (BuildContext context) {
                    //           return Scaffold(
                    //             appBar: AppBar(),
                    //             body: Center(
                    //               child: Container(
                    //                 color: Colors.grey[300],
                    //                 child: Image.memory(data),
                    //               ),
                    //             ),
                    //           );
                    //         },
                    //       ),
                    //     );
                    //   }
                    // }
                  },
                ),
                //CLEAR CANVAS
                IconButton(
                  icon: const Icon(Icons.clear),
                  color: Colors.white,
                  onPressed: () {
                    setState(() => _controller.clear());
                  },
                ),
              ],
            ),
          ),
        ],
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
        'Isi Absen',
        style: appBarStyle,
      ),
    );
  }
}

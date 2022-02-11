import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/alan1.jpg',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/icon/ic_back_white.svg',
                    width: 40,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark,
                      color: backgroundColor,
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: backgroundColor,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Event Informatika 2021',
                                  style: TextStyle(
                                      color: blackColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        text: 'Penulis',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '22 November 2021',
                                      style: TextStyle(
                                        color: greyColor,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text.rich(
                              TextSpan(
                                text:
                                    'Tangerang LIVE merupakan sebuah aplikasi terpadu dimana Teknologi Informasi yang tertanam di dalamnya adalah hasil sinergi dari aplikasi-aplikasi pelayanan yang selama ini telah dikembangkan oleh Pemkot Tangerang. Dalam aplikasi Tangerang LIVE itu, semua aplikasi dijadikan satu sehingga fungsinya menjadi lebih mudah dan efektif. Tangerang LIVE memuat beberapa fitur aplikasi seperti LIVE News, LAKSA, Siap Kerja, SEGAR, e-Paper, dan lain-lain.',
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/news/news_models.dart';
import 'package:salamapps/pages/user/news_detail_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/shared/news_card.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 10,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsDetailPage(),
                          ),
                        );
                      },
                      child: NewsCard(
                        NewsModels(
                            id: 1,
                            imageUrl: 'assets/images/alan1.jpg',
                            author: 'Admin',
                            titleNews:
                                'Tempat Liburan asik setelah penat ngoding',
                            date: '28 November 2021'),
                      ),
                    ),
                    NewsCard(
                      NewsModels(
                          id: 2,
                          imageUrl: 'assets/images/alan1.jpg',
                          author: 'Admin',
                          titleNews: 'Kuy ikutan INFEST',
                          date: '28 November 2021'),
                    ),
                    NewsCard(
                      NewsModels(
                          id: 3,
                          imageUrl: 'assets/images/alan1.jpg',
                          author: 'Admin',
                          titleNews: 'uin bandung juara robotika',
                          date: '28 November 2021'),
                    ),
                    NewsCard(
                      NewsModels(
                          id: 4,
                          imageUrl: 'assets/images/alan1.jpg',
                          author: 'Admin',
                          titleNews: 'akreditasi informatika telah sukses',
                          date: '28 November 2021'),
                    ),
                  ],
                ),
              )
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
        'Berita',
        style: TextStyle(color: backgroundColor),
      ),
      elevation: 1,
    );
  }
}

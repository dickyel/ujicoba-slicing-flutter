import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/news/news_models.dart';

class NewsCard extends StatelessWidget {
  final NewsModels news;
  NewsCard(this.news);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    news.imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.titleNews,
                    style: TextStyle(
                        fontSize: 18,
                        color: greyColor2,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.person),
                      Text(
                        news.author,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: greyColor2,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.date_range),
                      Text(
                        news.date,
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: greyColor2),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

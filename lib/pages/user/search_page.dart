import 'package:flutter/material.dart';
import 'package:salamapps/widgets/shared/bottom_navbar.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:animate_do/animate_do.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  FadeInDown(
                    child: Row(
                      children: [
                        Text(
                          "Melakukan Pencarian \nsemudah mencari 🔥",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade800,
                              height: 1.5),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeInDown(
                    delay: Duration(milliseconds: 400),
                    duration: Duration(milliseconds: 800),
                    child: Container(
                      height: 46,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey.shade700,
                            ),
                            border: InputBorder.none,
                            hintText: "Cari sesuatu",
                            hintStyle: TextStyle(color: Colors.grey.shade500)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

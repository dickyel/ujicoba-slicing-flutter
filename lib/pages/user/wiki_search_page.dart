import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WikiSearchPage extends StatefulWidget {
  const WikiSearchPage({Key? key}) : super(key: key);

  @override
  _WikiSearchPageState createState() => _WikiSearchPageState();
}

class _WikiSearchPageState extends State<WikiSearchPage> {
  final _formKey = GlobalKey<FormState>();
  var _autoValidate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                autovalidate: _autoValidate,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, right: edge),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Cari Kata',
                          border: OutlineInputBorder(),
                          filled: true,
                          errorStyle: TextStyle(fontSize: 15),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Tolong Isi';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: RawMaterialButton(
                          onPressed: () {
                            final isValid = _formKey.currentState!.validate();

                            if (isValid) {
                            } else {
                              setState(() {
                                _autoValidate = true;
                              });
                            }
                          },
                          fillColor: blueColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'Search',
                              style: TextStyle(
                                color: backgroundColor,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
        onPressed: () {},
        icon: SvgPicture.asset('assets/icon/ic_back_white.svg'),
      ),
      centerTitle: true,
      title: Text(
        'Wiki',
        style: appBarStyle,
      ),
    );
  }
}

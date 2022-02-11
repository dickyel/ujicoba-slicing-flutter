import 'package:flutter/material.dart';
import 'package:salamapps/pages/user/home_page.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/widgets/shared/picker_card.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Selamat Datang !!',
                  style: blueTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Silahkan Log In dengan Nim dan Password Anda',
                  style: captionTextStyle,
                ),
                SizedBox(
                  height: 60,
                ),
                Image.asset(
                  'assets/images/img_login.png',
                  height: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(paddingMenuLogin),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.only(left: 20),
                                    fillColor: whiteColor,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none,
                                    ),
                                    labelText: 'NIM',
                                    labelStyle: labelStyleLogin,
                                    hintText: 'Masukkan NIM Anda',
                                    hintStyle: hintStyleLogin,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.only(left: 20),
                                    fillColor: Color(0xffF6EFEF),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none,
                                    ),
                                    labelText: 'Password',
                                    labelStyle: labelStyleLogin,
                                    hintText: 'Masukkan Password',
                                    hintStyle: hintStyleLogin,
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff12317C),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 120,
                                      vertical: 20,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    'Log In',
                                    style: buttonTextStyle,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Lupa Kata Sandi ?',
                                    style: forgetPasswordStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

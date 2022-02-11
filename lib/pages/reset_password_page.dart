import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:animate_do/animate_do.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(edge),
        child: FadeInDown(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
              ),
              Text(
                'Reset Password',
                style: TextStyle(
                    fontSize: 30,
                    color: blackColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Please enter your email address',
                style: TextStyle(
                  fontSize: 18,
                  color: greyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: greyColor2,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: greyColor2))),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  onPressed: () {},
                  color: blueColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'Kirim',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Sudah punya akun ? Login',
                  style: forgetPasswordStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

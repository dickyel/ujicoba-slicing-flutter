import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/profile/profile_models.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCard extends StatelessWidget {
  final ProfileModels profile;
  ProfileCard(this.profile);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffFCF2F2),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                profile.imageUrl,
                width: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  profile.name,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff726A6A),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SvgPicture.asset('assets/icon/ic_biodata.svg'),
            ],
          ),
        ),
      ),
    );
  }
}

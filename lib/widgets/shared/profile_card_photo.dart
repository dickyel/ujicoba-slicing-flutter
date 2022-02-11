import 'package:flutter/material.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:salamapps/models/profile/profile_photo_models.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCardPhoto extends StatelessWidget {
  final ProfilePhotoModels photo;
  ProfileCardPhoto(this.photo);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        photo.imageUrl,
                      ),
                    ),
                    Positioned(
                      right: -2,
                      bottom: 0,
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: FlatButton(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                            side: BorderSide(color: Colors.white),
                          ),
                          onPressed: () {},
                          child: SvgPicture.asset(
                            'assets/icon/ic_plus-circle.svg',
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          photo.name,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xff3761C3),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          photo.infoJurusan,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xffB0A6A6),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

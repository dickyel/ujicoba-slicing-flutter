import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/models/seminar/seminar_models.dart';
import 'package:salamapps/widgets/shared/info_card.dart';
import 'package:salamapps/widgets/shared/seminar_card.dart';
import 'package:salamapps/widgets/ui/theme.dart';
import 'package:teledart/model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animate_do/animate_do.dart';

class HelpServicesPage extends StatelessWidget {
  void launchWhatsapp({required number, required message}) async {
    String url = 'whatsapp://send?phone=$number&text=$message';

    await canLaunch(url) ? launch(url) : print("Can't Open Whatsapp");
  }

  void launchTelegram() async {
    String url =
        'https://t.me/informatics_telegram_bot?start=2125562315:AAFdI1M_uF9reV99zQaD3Arsb7bOwVuozFY';

    await canLaunch(url) ? launch(url) : print('cant open telegram');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(edge),
            child: Column(
              children: [
                FadeInDown(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          launchTelegram();
                        },
                        child: SeminarCard(
                          SeminarModels(
                              id: 1,
                              imageUrl: 'assets/icon/ic_signal.svg',
                              title: 'Kontak Via Telegram'),
                        ),
                      ),
                      SeminarCard(
                        SeminarModels(
                            id: 2,
                            imageUrl: 'assets/icon/ic_discord.svg',
                            title: 'Kontak Via Discord'),
                      ),
                      GestureDetector(
                        onTap: () {
                          launchWhatsapp(
                              number: "+6285777724808", message: "Hai");
                        },
                        child: SeminarCard(
                          SeminarModels(
                              id: 3,
                              imageUrl: 'assets/icon/ic_signal.svg',
                              title: 'Kontak Via Whatsapp'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
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
        'Layanan Bantuan',
        style: appBarStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamapps/widgets/ui/theme.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/images/ic_menu.svg'),
      ),
      centerTitle: true,
      title: SvgPicture.asset('assets/images/ic_logo-if.svg'),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/ic_zoom-out.svg'))
      ],
    );
  }
}

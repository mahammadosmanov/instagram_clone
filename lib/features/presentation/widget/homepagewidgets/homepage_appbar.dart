import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/constants/assets_constants.dart';

enum AppBarPage {
  homePage,
  profilePage,
  reelsPage,
}

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({required this.appBarPage, Key? key}) : super(key: key);
  final AppBarPage appBarPage;

  @override
  Widget build(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          kIconInstagramLogo,
          width: 120,
          // ignore: deprecated_member_use
          color: isDarkMode ? Colors.white : Colors.black,
        ),
        InkWell(
          onTap: () {},
          child: const Icon(Icons.keyboard_arrow_down),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Image.asset(
            kIconHeart,
            width: 24,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            kIconDm,
            width: 50,
          ),
        ),
      ],
    );
  }
}

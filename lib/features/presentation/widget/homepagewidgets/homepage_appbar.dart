import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return SizedBox(
      width: 390.w,
      height: 40.h,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 5, 14, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 128.w,
              height: 30.h,
              child: Row(
                children: [
                  Image.asset(
                    kInstagramLogo,
                    width: 104.w,
                    height: 30.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 14),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        kArrowDownIcon,
                        width: 16.w,
                        height: 16.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 72.w,
              height: 24.h,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      kIconHeart,
                      width: 24.w,
                      height: 24.h,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      kIconDm,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

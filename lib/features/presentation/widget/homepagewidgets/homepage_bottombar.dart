import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/presentation/widget/profile_circle.dart';

import '../../../../core/constants/assets_constants.dart';

class HomePageBottomBar extends StatelessWidget {
  const HomePageBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 56.h,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: SizedBox(
              width: 69.w,
              height: 56.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.w, 12.h, 30.w, 20.h),
                child: Image.asset(
                  kHomePageIcon,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              width: 84.w,
              height: 56.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.w, 12.h, 30.w, 20.h),
                child: Image.asset(
                  kExploreIcon,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              width: 84.w,
              height: 56.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.w, 12.h, 30.w, 20.h),
                child: Image.asset(
                  kAddMediaIcon,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              width: 84.w,
              height: 56.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.w, 12.h, 30.w, 20.h),
                child: Image.asset(
                  kReelsIcon,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              width: 67.w,
              height: 56.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.w, 12.h, 15.w, 20.h),
                child: const ProfileCircle(
                    profileCircleType: ProfileCircleType.onNavigationBar),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

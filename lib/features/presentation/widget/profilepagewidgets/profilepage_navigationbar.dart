import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/assets_constants.dart';

class ProfilePageNavigationBar extends StatelessWidget {
  const ProfilePageNavigationBar({required this.profileName, super.key});
  final String profileName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 40.h,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(13.w, 9.h, 198.w, 12.h),
            child: SizedBox(
              width: 95.w,
              height: 19.h,
              child: Text(
                profileName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            width: 72.w,
            height: 24.h,
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    kAddMediaIcon,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    kThreeLineIcon,
                    width: 24.w,
                    height: 24.h,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

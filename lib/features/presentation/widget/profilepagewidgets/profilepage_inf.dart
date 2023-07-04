import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/assets_constants.dart';

class ProfilePageInformation extends StatelessWidget {
  const ProfilePageInformation(
      {required this.profileName, super.key, required this.userBio});
  final String profileName;

  final String userBio;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 180.h,
      child: Column(
        children: [
          SizedBox(
            width: 366.w,
            height: 89.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(profileName),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  userBio,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 366.w,
            height: 69.h,
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    kFollowButton,
                    height: 30.h,
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        kMessageButton,
                        width: 105.w,
                        height: 30.h,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        kSubscribeButton,
                        width: 106.w,
                        height: 30.h,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        kContactButton,
                        width: 105.w,
                        height: 30.h,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        kAddFriendButton,
                        width: 32.w,
                        height: 30.h,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

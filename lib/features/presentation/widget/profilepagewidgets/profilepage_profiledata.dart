import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/data/datasource/mock_data.dart';
import 'package:instagram_clone/features/presentation/widget/profile_circle.dart';

class ProfilePageProfileData extends StatelessWidget {
  const ProfilePageProfileData({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 90.h,
      child: Row(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(12.w, 0, 60.w, 0),
          child: const ProfileCircle(
              profileCircleType: ProfileCircleType.onProfile),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 27.5.h, 20.w, 27.5.h),
          child: SizedBox(
            width: 208.w,
            height: 35.h,
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      userEntityRohtolos.postCount.toString(),
                    ),
                    const Text(
                      'Posts',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 24.5.w,
                ),
                Column(
                  children: [
                    Text(
                      userEntityRohtolos.followerCount.toString(),
                    ),
                    const Text(
                      'Followers',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 24.5.w,
                ),
                Column(
                  children: [
                    Text(
                      userEntityRohtolos.followingCount.toString(),
                    ),
                    const Text(
                      'Following',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/assets_constants.dart';

enum ProfileCircleType {
  onPost,
  onProfile,
  onNavigationBar,
}

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({required this.profileCircleType, Key? key})
      : super(key: key);
  final ProfileCircleType profileCircleType;

  @override
  Widget build(BuildContext context) {
    if (profileCircleType == ProfileCircleType.onPost) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Column(
          children: [
            Container(
              width: 30.w,
              height: 30.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 100,
                  foregroundImage: AssetImage(kDogImage),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (profileCircleType == ProfileCircleType.onProfile) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            Container(
              width: 90.w,
              height: 90.h,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(7.11.w, 7.11.h, 7.11.w, 7.11.h),
                      child: SizedBox(
                        width: 75.79.w,
                        height: 75.79.h,
                        child: const CircleAvatar(
                          radius: 100,
                          foregroundImage: AssetImage(
                            kDogImage,
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.transparent,
                      foregroundImage: AssetImage(kStoryRing),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Column(
        children: [
          Container(
            width: 24.w,
            height: 24.h,
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              onTap: () {},
              child: const CircleAvatar(
                  foregroundImage:
                      AssetImage(kDogImage)), //TODO Create Image asset name
            ),
          ),
        ],
      );
    }
  }
}

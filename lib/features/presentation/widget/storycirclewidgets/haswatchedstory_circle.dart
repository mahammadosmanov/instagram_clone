import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/assets_constants.dart';

class HasWatchedStoryCircle extends StatelessWidget {
  const HasWatchedStoryCircle({required this.profileName, super.key});
  final String profileName;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 72.w,
        height: 72.h,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.68),
              child: SizedBox(
                width: 60.63.w,
                height: 60.63.h,
                child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(
                    kDogImage,
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                kStoryRing,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 72.w,
        height: 25.75.h,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(6.18, 0, 6.18, 0),
          child: SizedBox(
            width: 59.64.w,
            height: 25.75.h,
            child: Center(
              child: Text(
                profileName,
                style: const TextStyle(
                    fontStyle: FontStyle.normal, fontSize: 11.5),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

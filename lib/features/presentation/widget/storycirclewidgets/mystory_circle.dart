import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/assets_constants.dart';

class MyStoryCircle extends StatelessWidget {
  const MyStoryCircle({required this.profileName, super.key});
  final String profileName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 72.w,
          height: 72.h,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5.w, 5.68.h, 6.37.w, 5.68.h),
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
              Padding(
                padding: EdgeInsets.fromLTRB(46.w, 46.h, 6.w, 6.h),
                child: SizedBox(
                  width: 20.w,
                  height: 20.h,
                  child: CircleAvatar(
                    backgroundImage: const AssetImage(kPlusButton),
                    child: SvgPicture.asset(kPlusIcon),
                  ),
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
      ],
    );
  }
}

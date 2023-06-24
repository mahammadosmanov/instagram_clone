import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/domain/entity/user_entity.dart';

class ProfilePageInformation extends StatelessWidget {
  const ProfilePageInformation(
      {required this.profileName,
      super.key,
      required this.profileCategory,
      required this.userBio});
  final String profileName;
  final ProfileCategory profileCategory;
  final String userBio;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 234.h,
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
                Text(profileCategory.toString()),
                SizedBox(
                  height: 3.h,
                ),
                Text(userBio),
              ],
            ),
          )
        ],
      ),
    );
  }
}

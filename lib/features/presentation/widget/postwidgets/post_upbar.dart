import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile_circle.dart';

class PostUpBar extends StatelessWidget {
  const PostUpBar({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 50.h,
      child: Row(
        children: [
          SizedBox(
            width: 200.w,
            height: 36.h,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(2.84, 2.84, 10.84, 2.84),
                  child: InkWell(
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: const ProfileCircle(
                        profileCircleType: ProfileCircleType.onPost),
                  ),
                ),
                InkWell(
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Text(name)),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}

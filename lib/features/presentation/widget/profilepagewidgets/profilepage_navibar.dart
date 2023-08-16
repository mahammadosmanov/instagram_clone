import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/constants/assets_constants.dart';

class ProfileNavigationBar extends StatefulWidget {
  ProfileNavigationBar({super.key, required this.page});
  double page;

  @override
  State<ProfileNavigationBar> createState() => _ProfileNavigationBarState();
}

class _ProfileNavigationBarState extends State<ProfileNavigationBar> {
  calculateWidth() {
    return widget.page * 130;
    // if (widget.page == 0) {
    //   return 0.w;
    // } else if (widget.page == 1) {
    //   return 130.w;
    // } else if (widget.page == 2) {
    //   return 260.w;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 45.h,
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: SizedBox(
                  width: 130.w,
                  height: 40.h,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(53.w, 7.h, 53.w, 9.h),
                    child: Image.asset(
                      kPhotosIcon,
                      width: 24.w,
                      height: 24.h,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  width: 130.w,
                  height: 40.h,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(53.w, 7.h, 53.w, 9.h),
                    child: Image.asset(
                      kReelsIcon,
                      width: 24.w,
                      height: 24.h,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: SizedBox(
                  width: 130.w,
                  height: 40.h,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(53.w, 7.h, 53.w, 9.h),
                    child: Image.asset(
                      kTagIcon,
                      width: 24.w,
                      height: 24.h,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: calculateWidth(), //TODO add animation for transaction
              ),
              Container(
                width: 130.w,
                height: 2.h,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

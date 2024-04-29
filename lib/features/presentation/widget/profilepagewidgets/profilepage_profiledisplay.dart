import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/presentation/widget/profilepagewidgets/gridphoto_view.dart';
import '../../../../core/constants/assets_constants.dart';

class ProfileDisplay extends StatefulWidget {
  const ProfileDisplay({super.key, required this.dataImage});
  final List dataImage;

  @override
  State<ProfileDisplay> createState() => _ProfileDisplayState();
}

class _ProfileDisplayState extends State<ProfileDisplay> {
  double currentPage = 0;
  PageController pageController = PageController();
  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProfileDisplay oldWidget) {
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    calculateWidth() {
      return currentPage *
          137.5; //TODO it should be 130 but there is a problem I couldn't see try to see it
    }

    return Column(
      children: [
        SizedBox(
          width: 390.w,
          height: 45.h,
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          pageController.animateTo(0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                      );
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
                    onTap: () {
                      setState(() {
                        pageController.animateTo(500,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      });
                    },
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
                      setState(() {
                        pageController.animateTo(700,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      });
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
                    width: calculateWidth(),
                  ),
                  Container(
                    width: 129.w,
                    height: 2.h,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        ExpandablePageView(
          controller: pageController,
          children: [
            GridPhotoView(dataImage: widget.dataImage),
            GridPhotoView(dataImage: widget.dataImage),
            GridPhotoView(dataImage: widget.dataImage),
          ],
        ),
      ],
    );
  }
}

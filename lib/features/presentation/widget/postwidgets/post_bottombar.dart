import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_indicator.dart';
import '../../../../core/constants/assets_constants.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({
    Key? key,
    required this.length,
    required this.pageController,
    required this.isLiked,
    required this.isSaved,
  }) : super(key: key);
  final int length;
  final PageController pageController;
  final isLiked;
  final isSaved;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 44.h,
      child: Row(
        children: [
          const SizedBox(
            width: 12,
          ),
          SizedBox(
              width: 96.w,
              height: 24.h,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      isLiked ? kLikedIcon : kIconHeart,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      kCommentIcon,
                      width: 22.w,
                      height: 22.h,
                    ),
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      kSendIcon,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ],
              )),
          SizedBox(
            width: 62.w,
          ),
          PostIndicator(
            count: length,
            pageController: pageController,
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Image.asset(
              isSaved ? kBookmarkedIcon : kBookmarkIcon,
              width: isSaved ? 18.w : 22.w,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
    );
  }
}

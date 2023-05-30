import 'package:flutter/material.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_indicator.dart';

import '../../../../core/constants/assets_constants.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({
    Key? key,
    required this.length,
    required this.pageController,
  }) : super(key: key);
  final int length;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            kIconHeart,
            width: 23,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            kCommentIcon,
            width: 35,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            kSendIcon,
            width: 22,
          ),
        ),
        const SizedBox(
          width: 65,
        ),
        PostIndicator(
          count: length,
          pageController: pageController,
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Image.asset(
            kBookmarkIcon,
            width: 30,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

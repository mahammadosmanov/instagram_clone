import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/domain/entity/post_entity.dart';

import '../postwidgets/post_carditem.dart';

class HomePageTimeline extends StatelessWidget {
  const HomePageTimeline({required this.postEntity, Key? key})
      : super(key: key);

  final PostEntity postEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 581.h,
      child: ListView.builder(
          itemCount: 2,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                PostCardItem(
                  postEntity: postEntity,
                ),
              ],
            );
          }),
    );
  }
}

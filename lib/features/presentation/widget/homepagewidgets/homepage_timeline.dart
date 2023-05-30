import 'package:flutter/material.dart';
import 'package:instagram_clone/features/domain/entity/post_entity.dart';

import '../postwidgets/post_carditem.dart';

class HomePageTimeline extends StatelessWidget {
  const HomePageTimeline({required this.postEntity, Key? key})
      : super(key: key);

  final PostEntity postEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 607.4,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            PostCardItem(
              postEntity: postEntity,
            ),
          ],
        ),
      ),
    );
  }
}
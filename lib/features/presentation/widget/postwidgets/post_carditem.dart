import 'package:flutter/material.dart';
import 'package:instagram_clone/features/domain/entity/post_entity.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_bottombar.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_caption.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_item.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_upbar.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_viewlikes.dart';

class PostCardItem extends StatelessWidget {
  const PostCardItem(
      {required this.postEntity, required this.pageController, Key? key})
      : super(key: key);

  final PostEntity postEntity;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostUpBar(
          name: postEntity.userEntity.name,
        ),
        PostItem(
          listMediaEntity: postEntity.mediaList,
          pageController: pageController,
        ),
        const SizedBox(
          height: 5,
        ),
        PostBottomBar(
          pageController: pageController,
          length: postEntity.mediaList.length,
        ),
        const PostViewLikes(),
        PostCaption(
          postEntity: postEntity,
          buttonClick: () {},
          isClickedMoreButton: true,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

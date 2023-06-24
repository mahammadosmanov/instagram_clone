import 'package:flutter/material.dart';
import 'package:instagram_clone/features/domain/entity/post_entity.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_bottombar.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_caption.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_commentsection.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_item.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_upbar.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_viewlikes.dart';

class PostCardItem extends StatelessWidget {
  PostCardItem({required this.postEntity, Key? key}) : super(key: key);

  final PostEntity postEntity;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        PostUpBar(
          name: postEntity.userEntity.name,
        ),
        PostItem(
          listMediaEntity: postEntity.mediaList,
          pageController: pageController,
        ),
        PostBottomBar(
          isSaved: postEntity.isSaved,
          isLiked: postEntity.isLiked,
          pageController: pageController,
          length: postEntity.mediaList.length,
        ),
        const PostViewLikes(),
        PostCaption(
          postEntity: postEntity,
          buttonClick: () {},
          isClickedMoreButton: true,
        ),
        CommentsSection(postEntity: postEntity)
      ],
    );
  }
}

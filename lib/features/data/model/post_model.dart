import 'package:instagram_clone/features/domain/entity/post_entity.dart';

class PostModel extends PostEntity {
  PostModel({
    required super.userEntity,
    required super.isLiked,
    required super.caption,
    required super.isSaved,
    required super.postId,
    required super.commentUserName,
    required super.comment,
    required super.mediaList,
  });
}

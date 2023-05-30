import 'package:instagram_clone/features/domain/entity/user_entity.dart';

enum MediaType {
  video,
  image,
}

class PostEntity {
  PostEntity({
    required this.isLiked,
    required this.userEntity,
    required this.caption,
    required this.isSaved,
    required this.postId,
    required this.commentUserName,
    required this.comment,
    required this.mediaList,
  });

  final UserEntity userEntity;
  final String caption;
  final bool isLiked;
  final bool isSaved;
  final String postId;
  final String comment;
  final String commentUserName;
  final List<MediaEntity> mediaList;
}

class MediaEntity {
  MediaEntity({
    required this.mediaUrl,
    required this.mediaType,
  });

  final String mediaUrl;
  final MediaType mediaType;
}

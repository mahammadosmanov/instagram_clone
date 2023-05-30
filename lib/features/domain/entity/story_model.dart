import 'package:instagram_clone/features/domain/entity/user_entity.dart';

enum MediaType {
  image,
  video,
}

class StoryEntity {
  final String url;
  final MediaType mediaType;
  final Duration duration;
  final UserEntity userEntity;
  StoryEntity(
      {required this.url,
      required this.mediaType,
      required this.duration,
      required this.userEntity});
}

import 'package:instagram_clone/features/domain/entity/user_entity.dart';

enum StoryType {
  myStory,
  friendStory,
  closeFriendStory,
  hasWatchedStory,
}

class StoryEntity {
  final UserEntity userEntity;
  final StoryType storyType;
  StoryEntity({required this.userEntity, required this.storyType});
}

class StoryListEntity {
  StoryListEntity({required this.storyListEntity});
  final List<StoryEntity> storyListEntity;
}

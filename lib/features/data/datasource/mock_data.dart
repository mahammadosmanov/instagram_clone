import 'package:instagram_clone/features/domain/entity/post_entity.dart';
import 'package:instagram_clone/features/domain/entity/profile_entity.dart';
import 'package:instagram_clone/features/domain/entity/reels_entity.dart';
import 'package:instagram_clone/features/domain/entity/story_entity.dart';
import 'package:instagram_clone/features/domain/entity/user_entity.dart';

PostEntity postEntityRohtolos = PostEntity(
  isLiked: true,
  userEntity: UserEntity(
    name: 'Rohtolos',
    postCount: 0,
    followerCount: 0,
    followingCount: 0,
    userBio: '',
    profileCategory: ProfileCategory.Artist,
    hasStory: false,
  ),
  caption:
      "Rohtolos's caption sadcafgvwetfgq32erfqefqaedfmaokfna[oefna[fnma[fnao[fna[odfn[oafno[anfo[adsnfonsijfgnuvweisjuprgnvbqawengoiaengfoajkdnfons",
  isSaved: true,
  postId: '123',
  commentUserName: 'Saliallah',
  comment: 'Böyle fotonun amk',
  mediaList: [
    MediaEntity(
      mediaUrl:
          'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl: 'https://picsum.photos/200/300',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
    MediaEntity(
      mediaUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      mediaType: MediaType.image,
    ),
  ],
);

UserEntity userEntityMe = UserEntity(
  name: 'Your Story',
  postCount: 0,
  followerCount: 0,
  followingCount: 0,
  userBio: '',
  profileCategory: ProfileCategory.Artist,
  hasStory: true,
);
UserEntity userEntityRohtolos = UserEntity(
  name: 'Rohtolos',
  postCount: 0,
  followerCount: 0,
  followingCount: 0,
  userBio:
      'In seperate worlds I want It that way. Tell me something that I can change in a flash',
  profileCategory: ProfileCategory.Artist,
  hasStory: true,
);
UserEntity userEntityDechauvell = UserEntity(
  name: 'Dechauvell',
  postCount: 0,
  followerCount: 0,
  followingCount: 0,
  userBio: '',
  profileCategory: ProfileCategory.Artist,
  hasStory: true,
);
UserEntity userEntityVoldemort = UserEntity(
  name: 'Voldemort',
  postCount: 0,
  followerCount: 0,
  followingCount: 0,
  userBio: '',
  profileCategory: ProfileCategory.Artist,
  hasStory: true,
);

List<StoryEntity> storyList = [
  storyEntityMyStory,
  storyEntityRohtolos,
  storyEntityDechauvell,
  storyEntityVoldemort,
];

StoryEntity storyEntityMyStory =
    StoryEntity(userEntity: userEntityMe, storyType: StoryType.myStory);

StoryEntity storyEntityRohtolos = StoryEntity(
  userEntity: userEntityRohtolos,
  storyType: StoryType.friendStory,
);

StoryEntity storyEntityDechauvell = StoryEntity(
  userEntity: userEntityDechauvell,
  storyType: StoryType.hasWatchedStory,
);

StoryEntity storyEntityVoldemort = StoryEntity(
  userEntity: userEntityVoldemort,
  storyType: StoryType.closeFriendStory,
);

ProfileEntity profileEntityRohtolos = ProfileEntity(imageAssetList: [
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
  'assets/dog_image.png',
]);

ReelsEntity RohtolosReelsEntity = ReelsEntity(reelsUrls: [
  'https://www.videvo.net/video/the-interior-of-a-data-processing-center-3/656716/',
  'https://www.videvo.net/video/the-interior-of-a-data-processing-center-3/656716/'
]);

class UserEntity {
  final String name;
  final ProfileCategory profileCategory;
  final String userBio;
  final int postCount;
  final int followerCount;
  final int followingCount;
  final bool hasStory;

  UserEntity({
    required this.hasStory,
    required this.userBio,
    required this.name,
    required this.postCount,
    required this.followerCount,
    required this.followingCount,
    required this.profileCategory,
  });
}

enum ProfileCategory {
  artist,
  musician,
  blogger,
  education,
  gamer,
  videoCreator,
}

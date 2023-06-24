class UserEntity {
  final String name;
  final ProfileCategory profileCategory;
  final String userBio;
  final int postCount;
  final int followerCount;
  final int followingCount;

  UserEntity({
    required this.userBio,
    required this.name,
    required this.postCount,
    required this.followerCount,
    required this.followingCount,
    required this.profileCategory,
  });
}

enum ProfileCategory {
  Artist,
  Musician,
  Blogger,
  Education,
  Gamer,
  Restaurant,
  VideoCreator,
}

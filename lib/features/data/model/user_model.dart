import 'package:instagram_clone/features/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.name,
      required super.postCount,
      required super.followerCount,
      required super.followingCount,
      required super.userBio,
      required super.profileCategory});
}

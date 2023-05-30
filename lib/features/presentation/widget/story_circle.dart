import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/assets_constants.dart';

enum StoryType {
  myStory,
  friendStory,
  closeFriendStory,
  onLive,
}

class StoryCircle extends StatelessWidget {
  const StoryCircle(
      {required this.profileName, required this.storyType, Key? key})
      : super(key: key);
  final StoryType storyType;
  final String profileName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          child: InkWell(
            onTap: () {},
            child: Stack(
              children: [
                Image.asset(kPictureFrame),
                Image.asset(kProfilePicture), //TODO Create Image asset name
              ],
            ),
          ),
        ),
        Text(profileName),
      ],
    );
  }
}

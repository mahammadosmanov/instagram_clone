import 'package:flutter/material.dart';
import 'package:instagram_clone/features/presentation/widget/story_circle.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      //TODO change to .builder for story control
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Row(
          children: [
            StoryCircle(
                storyType: StoryType.myStory, profileName: 'Your story'),
            SizedBox(
              width: 15,
            ),
            StoryCircle(storyType: StoryType.friendStory, profileName: ''),
            SizedBox(
              width: 15,
            ),
            StoryCircle(storyType: StoryType.friendStory, profileName: ''),
            SizedBox(
              width: 15,
            ),
            StoryCircle(storyType: StoryType.friendStory, profileName: ''),
            SizedBox(
              width: 15,
            ),
            StoryCircle(storyType: StoryType.friendStory, profileName: ''),
            SizedBox(
              width: 15,
            ),
            StoryCircle(storyType: StoryType.friendStory, profileName: ''),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}

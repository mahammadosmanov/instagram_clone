import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/presentation/widget/storycirclewidgets/closefriendstory_circle.dart';
import 'package:instagram_clone/features/presentation/widget/storycirclewidgets/friendstory_circle.dart';
import 'package:instagram_clone/features/presentation/widget/storycirclewidgets/haswatchedstory_circle.dart';
import 'package:instagram_clone/features/presentation/widget/storycirclewidgets/mystory_circle.dart';
import '../../domain/entity/story_entity.dart';

class StoryContainer extends StatelessWidget {
  const StoryContainer(
      {required this.profileName, required this.storyType, Key? key})
      : super(key: key);
  final StoryType storyType;
  final String profileName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.w,
      height: 97.75.h,
      child: Column(
        children: [
          InkWell(
              onTap: () {},
              child: storyType == StoryType.hasWatchedStory
                  ? HasWatchedStoryCircle(
                      profileName: profileName,
                    )
                  : storyType == StoryType.myStory
                      ? MyStoryCircle(profileName: profileName)
                      : storyType == StoryType.friendStory
                          ? FriendStoryCircle(
                              profileName: profileName,
                            )
                          : storyType == StoryType.closeFriendStory
                              ? CloseFriendStoryCircle(
                                  profileName: profileName,
                                )
                              : Container()),
        ],
      ),
    );
  }
}

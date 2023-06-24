import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/data/datasource/mock_data.dart';
import 'package:instagram_clone/features/domain/entity/story_entity.dart';
import 'package:instagram_clone/features/presentation/widget/story_circle.dart';

class StoryBar extends StatelessWidget {
  StoryBar({required this.storyList, Key? key}) : super(key: key);
  final StoryEntity storyEntity = storyEntityRohtolos;
  final List<StoryEntity> storyList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 105.75.h,
      child: ListView.builder(
          itemCount:
              storyList.length, //TODO change it to Story entity list count
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            //TODO change to .builder for story control
            return Row(
              children: [
                StoryContainer(
                  storyType: storyList[index].storyType,
                  profileName: storyList[index].userEntity.name,
                ),
                SizedBox(
                  width: 12.w,
                ),
              ],
            );
          }),
    );
  }
}

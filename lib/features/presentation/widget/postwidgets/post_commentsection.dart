import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/domain/entity/post_entity.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({
    required this.postEntity,
    Key? key,
  }) : super(key: key);
  final PostEntity postEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 364.w,
      height: 50.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // RichText(
          //   text: TextSpan(
          //     children: [
          //       TextSpan(
          //         text: '${postEntity.userEntity.name} ',
          //         style: const TextStyle(
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //       ),
          //       TextSpan(
          //         text: postEntity.comment,
          //         style: const TextStyle(
          //           color: Colors.black,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),//TODO add some comment show case
          InkWell(
            onTap: () {},
            child: const Text(
              'View all comments',
              style:
                  TextStyle(color: Color(0xFF6E6E6E)), //TODO add Comment count
            ),
          ),
        ],
      ),
    );
  }
}

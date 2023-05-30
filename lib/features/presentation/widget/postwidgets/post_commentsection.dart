import 'package:flutter/material.dart';
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
      width: double.infinity,
      height: 100,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                postEntity.userEntity.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(postEntity.comment),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text('View all  comments'),
          )
        ],
      ),
    );
  }
}

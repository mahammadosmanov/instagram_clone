import 'package:flutter/material.dart';

import '../profile_circle.dart';

class PostUpBar extends StatelessWidget {
  const PostUpBar({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProfileCircle(profileCircleType: ProfileCircleType.onPost),
        const SizedBox(
          width: 5,
        ),
        Text(name),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }
}

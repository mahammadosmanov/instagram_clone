import 'package:flutter/material.dart';

class PostViewLikes extends StatelessWidget {
  const PostViewLikes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'View likes',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}

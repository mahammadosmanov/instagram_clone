import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostViewLikes extends StatelessWidget {
  const PostViewLikes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(13.w, 0, 0, 0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: const Text(
              'View likes',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

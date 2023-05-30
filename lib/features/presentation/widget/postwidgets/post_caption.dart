import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../domain/entity/post_entity.dart';

class PostCaption extends StatelessWidget {
  const PostCaption({
    required this.postEntity,
    required this.buttonClick,
    required this.isClickedMoreButton,
    Key? key,
  }) : super(key: key);
  final PostEntity postEntity;
  final bool isClickedMoreButton;
  final VoidCallback buttonClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(children: [
                    TextSpan(
                      text: '${postEntity.userEntity.name} ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: postEntity.caption,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ]),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'more',
                  style: const TextStyle(color: Colors.grey),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('asdasdsa');
                    },
                ),
              ),
              Flexible(child: Container()),
            ],
          )
        ],
      ),
    );
  }
}

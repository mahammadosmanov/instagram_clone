import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../domain/entity/post_entity.dart';

class PostCaption extends StatefulWidget {
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
  State<PostCaption> createState() => _PostCaptionState();
}

class _PostCaptionState extends State<PostCaption> {
  bool isClickedMore = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 20, 0),
      child: Column(
        children: [
          isClickedMore == true
              ? Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${widget.postEntity.userEntity.name} ',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: widget.postEntity.caption,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    Flexible(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(children: [
                          TextSpan(
                            text: '${widget.postEntity.userEntity.name} ',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: widget.postEntity.caption,
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
                            setState(() {
                              isClickedMore = true;
                            });
                          },
                      ),
                    ),
                    Flexible(child: Container()),
                  ],
                ),
        ],
      ),
    );
  }
}

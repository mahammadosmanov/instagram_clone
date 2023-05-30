import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostImage extends StatefulWidget {
  const PostImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;

  @override
  State<PostImage> createState() => _PostImageState();
}

class _PostImageState extends State<PostImage>
    with SingleTickerProviderStateMixin {
  late TransformationController controller;
  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    controller = TransformationController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() => controller.value = animation!.value);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      transformationController: controller,
      maxScale: 4,
      minScale: 1,
      onInteractionEnd: (details) {
        resetAnimation();
      },
      child: CachedNetworkImage(
        imageUrl: widget.imageUrl,
      ),
    );
  }

  void resetAnimation() {
    animation = Matrix4Tween(
      begin: controller.value,
      end: Matrix4.identity(),
    ).animate(CurvedAnimation(
        parent: animationController, curve: Curves.bounceInOut));
    animationController.forward(from: 0);
  }
}

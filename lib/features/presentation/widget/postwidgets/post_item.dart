import 'package:flutter/material.dart';
import 'package:instagram_clone/features/domain/entity/post_entity.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_image.dart';
import 'package:instagram_clone/features/presentation/widget/postwidgets/post_videoplayer.dart';

class PostItem extends StatelessWidget {
  const PostItem(
      {Key? key, required this.listMediaEntity, required this.pageController})
      : super(key: key);
  final List<MediaEntity> listMediaEntity;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 300,
      child: PageView.builder(
        controller: pageController,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: listMediaEntity.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: listMediaEntity.elementAt(index).mediaType == MediaType.video
                ? PostVideoPlayer(
                    videoUrl: listMediaEntity.elementAt(index).mediaUrl)
                : PostImage(
                    imageUrl: listMediaEntity.elementAt(index).mediaUrl,
                  ),
          );
        },
      ),
    );
  }
}

// class PostItem1 extends StatefulWidget {
//   const PostItem1({
//     Key? key,
//     required this.listMediaEntity,
//   }) : super(key: key);
//
//   final List<MediaEntity> listMediaEntity;
//   @override
//   State<PostItem1> createState() => _PostItem1State();
// }
//
// class _PostItem1State extends State<PostItem1> {
//   PageController pageController = PageController();
//
//   @override
//   void initState() {
//     pageController.addListener(() {
//       print(pageController.page);
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 500,
//       height: 300,
//       child: PageView.builder(
//         controller: pageController,
//         physics: const BouncingScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemCount: widget.listMediaEntity.length,
//         itemBuilder: (context, index) {
//           return Container(
//             color: Colors.white,
//             child: widget.listMediaEntity.elementAt(index).mediaType ==
//                     MediaType.video
//                 ? PostVideoPlayer(
//                     videoUrl: widget.listMediaEntity.elementAt(index).mediaUrl)
//                 : PostImage(
//                     imageUrl: widget.listMediaEntity.elementAt(index).mediaUrl),
//           );
//         },
//       ),
//     );
//   }
// }

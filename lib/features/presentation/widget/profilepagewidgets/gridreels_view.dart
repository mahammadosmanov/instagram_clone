import 'package:flutter/material.dart';
import 'package:instagram_clone/features/data/datasource/mock_data.dart';
import 'package:instagram_clone/features/domain/entity/reels_entity.dart';
import 'package:video_player/video_player.dart';

class GridReelsView extends StatefulWidget {
  GridReelsView({super.key});
  final ReelsEntity reelsEntity = rohtolosReelsEntity;
  @override
  State<GridReelsView> createState() => _GridReelsViewState();
}

class _GridReelsViewState extends State<GridReelsView> {
  late VideoPlayerController _videoPlayerController;
  int indexVideo = 0;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.networkUrl(
        widget.reelsEntity.reelsUrls[indexVideo])
      ..initialize().then((_) {
        setState(() {});
      });
    _videoPlayerController.play();
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(
              () {
                _videoPlayerController.value.isPlaying
                    ? _videoPlayerController.pause()
                    : _videoPlayerController.play();
              },
            );
          },
          child: _videoPlayerController.value.isInitialized
              ? VideoPlayer(_videoPlayerController)
              : Container(),
        );
      },
    );
  }
}

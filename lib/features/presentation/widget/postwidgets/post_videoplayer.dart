import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

Future<void> initializeVideo(
    VideoPlayerController videoPlayerController) async {
  await videoPlayerController.initialize();
}

class PostVideoPlayer extends StatefulWidget {
  const PostVideoPlayer({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  final String videoUrl;

  @override
  State<PostVideoPlayer> createState() => _PostVideoPlayerState();
}

class _PostVideoPlayerState extends State<PostVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl)
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
    return InkWell(
      onTap: () {
        setState(() {
          _videoPlayerController.value.isPlaying
              ? _videoPlayerController.pause()
              : _videoPlayerController.play();
        });
      },
      child: SizedBox(
        width: 350,
        height: 350,
        child: _videoPlayerController.value.isInitialized
            ? VideoPlayer(_videoPlayerController)
            : Container(),
      ),
    );
  }
}

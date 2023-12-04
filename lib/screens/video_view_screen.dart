import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoViewScreen extends StatelessWidget {
  VideoViewScreen({super.key});

  final _controller = VideoPlayerController.networkUrl(
    Uri.parse(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
  )..initialize();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video View"),
      ),
      body: VideoPlayer(_controller),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.play();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

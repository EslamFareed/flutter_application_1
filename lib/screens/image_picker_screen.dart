import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  XFile? file;
  VideoPlayerController? _controller;
  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              var picker = ImagePicker();
              file = await picker.pickVideo(source: ImageSource.gallery);
              setState(() {});
              _controller = VideoPlayerController.file(File(file!.path),
                  videoPlayerOptions: VideoPlayerOptions())
                ..initialize().then((_) {
                  setState(() {});
                });
              _controller!.play();
            },
            child: Text("Pick Vidoe"),
          ),
          Center(
            child: _controller != null
                ? AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: VideoPlayer(_controller!),
                  )
                : Container(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller!.value.isPlaying
                ? _controller!.pause()
                : _controller!.play();
          });
        },
        child: Icon(
          _controller == null ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudioScreen extends StatelessWidget {
  const AudioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio"),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () async {
            AssetsAudioPlayer.newPlayer().open(
              Audio.liveStream(
                'http://mediaserv30.live-streams.nl:8086/live',
              ),
              autoStart: true,
              showNotification: true,
            );
            // final assetsAudioPlayer = AssetsAudioPlayer();

            // try {
            //   await assetsAudioPlayer.open(
            //     Audio.liveStream(
            //         'http://mediaserv30.live-streams.nl:8086/live'),
            //   );

            //   assetsAudioPlayer.play();
            // } catch (t) {
            //   //stream unreachable
            // }
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}

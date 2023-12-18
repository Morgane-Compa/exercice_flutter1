import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoHero extends StatefulWidget {
  const VideoHero({super.key});

  @override
  _VideoHeroState createState() => _VideoHeroState();
}

class _VideoHeroState extends State<VideoHero> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(
      'assets/video/v1.mp4',
    )..initialize().then((_) {
        _videoPlayerController.play();
        setState(() {}); 
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (_videoPlayerController.value.isInitialized)
          AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: VideoPlayer(_videoPlayerController),
          ),
        Positioned.fill(
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: const [
                Text(
                  'France Data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Atlas des données de France',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    letterSpacing: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
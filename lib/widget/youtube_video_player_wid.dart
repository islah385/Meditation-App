import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class YoutubeVideoPlayerWid extends StatefulWidget {
  String videoURL;

  YoutubeVideoPlayerWid(
      {super.key, required this.videoURL});

  @override
  State<YoutubeVideoPlayerWid> createState() => _YoutubeVideoPlayerWidState();
}

class _YoutubeVideoPlayerWidState extends State<YoutubeVideoPlayerWid> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(widget.videoURL);
    _controller = YoutubePlayerController(initialVideoId: videoID!);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,

        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    _youtubePlayerController = YoutubePlayerController(
        flags: const YoutubePlayerFlags(
          startAt: 0,
          autoPlay: false,
        ),
        initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl) ??
            'https://www.youtube.com/watch?v=gvyUuxdRdR4&list=RDCLAK5uy_kvB-Tek1AZcCVmlbyA8iDfBgD4hPxgec8&index=2');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitDown,
          DeviceOrientation.portraitUp,
        ]);
        return true;
      },
      child: YoutubePlayer(
        controller: _youtubePlayerController,
        showVideoProgressIndicator: true,
        aspectRatio: 16 / 9,
        /*bottomActions: [
          ProgressBar(isExpanded: true),
        ],*/
      ),
    );
  }
}

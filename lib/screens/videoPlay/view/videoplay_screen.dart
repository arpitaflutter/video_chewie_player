import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_chewie_player/screens/videoPlay/provider/videoplay_provider.dart';
import 'package:video_player/video_player.dart';

class videoplay_screen extends StatefulWidget {
  const videoplay_screen({Key? key}) : super(key: key);

  @override
  State<videoplay_screen> createState() => _videoplay_screenState();
}

class _videoplay_screenState extends State<videoplay_screen> {

  videoplay_provider? vf,vt;

  @override
  void initState() {
    super.initState();
    Provider.of<videoplay_provider>(context,listen: false).initVideo();
  }
  @override
  Widget build(BuildContext context) {

    vf = Provider.of<videoplay_provider>(context,listen: false);
    vt = Provider.of<videoplay_provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Video Play"),
        ),
        body: Column(
          children: [
            Container(
              height: 200,width: double.infinity,color: Colors.black,
              child: Chewie(controller: vt!.chewieController!),
            ),
          ],
        ),
      ),
    );
  }
}

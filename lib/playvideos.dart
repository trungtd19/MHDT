import 'dart:ui';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoApp extends StatefulWidget {
  const VideoApp({Key? key}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;
  late VideoPlayerController _controller4;
  var physicalScreenSize = window.physicalSize;
  var pixelRatio = window.devicePixelRatio;

  @override
  void initState() {
    super.initState();
    _controller1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dnp43qowp/video/upload/v1639577434/video6_aktv8n.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {
        setState(() {});
      });
    _controller2 = VideoPlayerController.network(
        'https://res.cloudinary.com/dnp43qowp/video/upload/v1639493057/video3_rlsupw.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {
        setState(() {});
      });
    _controller3 = VideoPlayerController.network(
        'https://res.cloudinary.com/dnp43qowp/video/upload/v1639577670/video7_oc6yry.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {
        setState(() {});
      });
    _controller4 = VideoPlayerController.network(
        'https://res.cloudinary.com/dnp43qowp/video/upload/v1639577863/video8_vn9gck.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {
        setState(() {});
      });
    _controller1.play();
    _controller2.play();
    _controller3.play();
    _controller4.play();

    _controller1.setLooping(true);
    _controller2.setLooping(true);
    _controller3.setLooping(true);
    _controller4.setLooping(true);

    _controller1.setVolume(0.0);
    _controller2.setVolume(0.0);
    _controller3.setVolume(0.0);
  }

  @override
  Widget build(BuildContext context) {
    var logicalScreenSize = window.physicalSize / pixelRatio;
    var physicalWidth = logicalScreenSize.width;
    var physicalHeight = logicalScreenSize.height;

    return MaterialApp(
        title: 'Video Demo',
        home: Scaffold(
          body: Center(
              child: Row(mainAxisSize: MainAxisSize.max, children: [
            Column(
              children: [
                SizedBox(
                    height: physicalHeight / 2,
                    width: physicalWidth / 2,
                    child: Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(0)),
                      child: _controller1.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller1.value.aspectRatio,
                              child: VideoPlayer(_controller1),
                            )
                          : Container(),
                    )),
                SizedBox(
                    height: physicalHeight / 2,
                    width: physicalWidth / 2,
                    child: Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(0)),
                      child: _controller2.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller2.value.aspectRatio,
                              child: VideoPlayer(_controller2),
                            )
                          : Container(),
                    ))
              ],
            ),
            Column(
              children: [
                SizedBox(
                    height: physicalHeight / 2,
                    width: physicalWidth / 2,
                    child: Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(0)),
                      child: _controller3.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller3.value.aspectRatio,
                              child: VideoPlayer(_controller3),
                            )
                          : Container(),
                    )),
                SizedBox(
                    height: physicalHeight / 2,
                    width: physicalWidth / 2,
                    child: Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(0)),
                      child: _controller4.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller4.value.aspectRatio,
                              child: VideoPlayer(_controller4),
                            )
                          : Container(),
                    ))
              ],
            )
          ])),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
  }
}

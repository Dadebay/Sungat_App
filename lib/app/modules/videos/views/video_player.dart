// ignore_for_file: file_names

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:sekillendirisungaty/constants/constants.dart';
import 'package:sekillendirisungaty/constants/widgets.dart';
import 'package:video_player/video_player.dart';

import '../../home/controllers/home_controller.dart';

class VideoPLayerMine extends StatefulWidget {
  final String? videoURL;
  final bool page;
  const VideoPLayerMine({Key? key, this.videoURL, required this.page}) : super(key: key);

  @override
  State<VideoPLayerMine> createState() => _VideoPLayerMineState();
}

class _VideoPLayerMineState extends State<VideoPLayerMine> {
  late VideoPlayerController controller;
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.network(
      widget.videoURL!,
    )
      ..addListener(() {
        setState(() {});
      })
      ..setLooping(true)
      ..initialize().then((value) {
        flickManager = FlickManager(
          autoPlay: true,
          videoPlayerController: VideoPlayerController.network(widget.videoURL!),
        );
      });
  }

  @override
  void dispose() {
    super.dispose();
    flickManager.dispose();
    controller.dispose();
  }
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: controller.value.isInitialized
                ? Stack(
                    fit: StackFit.expand,
                    children: [
                      AspectRatio(
                        aspectRatio: controller.value.aspectRatio,
                        child: FlickVideoPlayer(
                            flickVideoWithControls: FlickVideoWithControls(
                              controls: FlickPortraitControls(
                                progressBarSettings: FlickProgressBarSettings(),
                              ),
                            ),
                            preferredDeviceOrientation: const [
                              DeviceOrientation.portraitDown,
                              DeviceOrientation.portraitUp,
                            ],
                            preferredDeviceOrientationFullscreen: const [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
                            flickManager: flickManager),
                      ),
                      // AspectRatio(aspectRatio: _controller.value.aspectRatio, child: VideoPlayer(_controller)),
                    ],
                  )
                : Center(child: spinKit()),
          ),
          widget.page
              ? Positioned(
                  top: 50,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(IconlyLight.arrowLeftCircle, color:  homeController.findMainColor.value == 1
                      ? kPrimaryColor.withOpacity(0.4)
                      : homeController.findMainColor.value == 2
                          ? kPrimaryColor1.withOpacity(0.4)
                          : kPrimaryColor2.withOpacity(0.4), size: 30),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}

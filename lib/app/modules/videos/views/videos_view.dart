import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sekillendirisungaty/constants/constants.dart';

import '../../../../constants/custom_app_bar.dart';
import '../controllers/videos_controller.dart';

class VideosView extends GetView<VideosController> {
  const VideosView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: false, actionIcon: false, name: 'videos'),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius20,
              color: Colors.red,
            ),
            margin: EdgeInsets.all(8),
            child: Center(
              child: Lottie.asset('assets/lottie/button.json'),
            ),
          );
        },
        staggeredTileBuilder: (index) => StaggeredTile.count(
          1,
          index % 2 == 0 ? 1.2 : 1.3,
        ),
      ),
    );
  }
}

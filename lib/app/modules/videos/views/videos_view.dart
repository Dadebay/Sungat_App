import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sekillendirisungaty/app/modules/videos/views/video_player.dart';
import 'package:sekillendirisungaty/constants/constants.dart';

import '../../../../constants/custom_app_bar.dart';
import '../../../../constants/widgets.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/videos_controller.dart';

class VideosView extends GetView<VideosController> {
  VideosView({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: false, actionIcon: false, name: 'videos'),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('videos').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (streamSnapshot.hasError) {
              return Center(
                  child: Text(
                "error".tr,
                style: TextStyle(color: Colors.white, fontFamily: gilroyMedium, fontSize: 22),
              ));
            } else if (streamSnapshot.data!.docs.isEmpty) {
              return const Center(
                child: Text(
                  "Hic zat ýok",
                  style: TextStyle(color: Colors.white, fontFamily: gilroyMedium, fontSize: 22),
                ),
              );
            }
            return StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              shrinkWrap: true,
              addAutomaticKeepAlives: true,
              physics: BouncingScrollPhysics(),
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(() => VideoPLayerMine(
                          page: true,
                          videoURL: streamSnapshot.data!.docs[index]['wideoURL'],
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: borderRadius20,
                      color: homeController.findMainColor.value == 1
                          ? kPrimaryColor.withOpacity(0.4)
                          : homeController.findMainColor.value == 2
                              ? kPrimaryColor1.withOpacity(0.4)
                              : kPrimaryColor2.withOpacity(0.4),
                    ),
                    margin: EdgeInsets.all(8),
                    child: Stack(
                      children: [
                        Positioned.fill(
                            child: ClipRRect(
                          borderRadius: borderRadius20,
                          child: CachedNetworkImage(
                            fadeInCurve: Curves.ease,
                            imageUrl: streamSnapshot.data!.docs[index]['wideoIMG'],
                            imageBuilder: (context, imageProvider) => Container(
                              width: Get.size.width,
                              decoration: BoxDecoration(
                                borderRadius: borderRadius20,
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            placeholder: (context, url) => Center(child: spinKit()),
                            errorWidget: (context, url, error) => Center(
                              child: Text(
                                'Surat ýok',
                                style: TextStyle(color: Colors.white, fontFamily: gilroyBold),
                              ),
                            ),
                          ),
                        )),
                        Positioned.fill(
                          child: Lottie.asset('assets/lottie/button.json',),
                        ),
                      ],
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index) => StaggeredTile.count(
                1,
                index % 2 == 0 ? 1.2 : 1.3,
              ),
            );
          }),
    );
  }
}

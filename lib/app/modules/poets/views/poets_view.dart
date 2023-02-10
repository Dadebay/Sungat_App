import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:sekillendirisungaty/app/modules/poets/views/poets_product_profil.dart';
import 'package:sekillendirisungaty/constants/custom_app_bar.dart';

import '../../../../constants/constants.dart';
import '../../../../constants/widgets.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/poets_controller.dart';

class PoetsView extends GetView<PoetsController> {
  PoetsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: true, actionIcon: false, name: 'poets1'),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('poets').snapshots(),
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
            } else if (streamSnapshot.hasData) {
              return StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                shrinkWrap: true,
                addAutomaticKeepAlives: true,
                physics: BouncingScrollPhysics(),
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return card(streamSnapshot, index);
                },
                staggeredTileBuilder: (index) => StaggeredTile.count(
                  1,
                  1.5,
                ),
              );
            }
            return Text("Error");
          }),
    );
  }

  final HomeController homeController = Get.put(HomeController());

  GestureDetector card(AsyncSnapshot<QuerySnapshot<Object?>> streamSnapshot, int index) {
    return GestureDetector(
      onTap: () {
        Get.to(() => PoetsProductProfil(
              streamSnapshot: streamSnapshot.data!.docs[index],
            ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
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
                child: ClipRRect(
                  borderRadius: borderRadius10,
                  child: CachedNetworkImage(
                    fadeInCurve: Curves.ease,
                    imageUrl: streamSnapshot.data!.docs[index]['profilePic'],
                    imageBuilder: (context, imageProvider) => Container(
                      width: Get.size.width,
                      decoration: BoxDecoration(
                        borderRadius: borderRadius10,
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 8, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  streamSnapshot.data!.docs[index]['name'],
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: TextStyle(color: Colors.black, fontFamily: gilroyMedium, fontSize: 16),
                ),
                Text(
                  streamSnapshot.data!.docs[index]['job'],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(color: Colors.black54, fontFamily: gilroyLight, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

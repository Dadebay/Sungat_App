import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sekillendirisungaty/app/modules/poets/views/photo_view.dart';
import 'package:sekillendirisungaty/constants/custom_app_bar.dart';

import '../../../../constants/constants.dart';
import '../../../../constants/widgets.dart';
import '../../home/controllers/home_controller.dart';

class PoetsProductProfil extends StatelessWidget {
  final DocumentSnapshot streamSnapshot;
  PoetsProductProfil({super.key, required this.streamSnapshot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: true, actionIcon: false, name: streamSnapshot['name']),
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => PhotoViewPage(
                    image: streamSnapshot['profilePic'],
                    name: streamSnapshot['name'],
                  ));
            },
            child: Center(
              child: ClipOval(
                child: CachedNetworkImage(
                  fadeInCurve: Curves.ease,
                  imageUrl: streamSnapshot['profilePic'],
                  imageBuilder: (context, imageProvider) => Container(
                    width: 200,
                    height: 200,
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
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  streamSnapshot['name'],
                  maxLines: 2,
                  style: TextStyle(color: Colors.black, fontFamily: gilroyMedium, fontSize: 22),
                ),
                Text(
                  streamSnapshot['job'],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontFamily: gilroyLight, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Gysgaça maglumat',
                    maxLines: 2,
                    style: TextStyle(color: Colors.black, fontFamily: gilroyBold, fontSize: 20),
                  ),
                ),
                Text(
                  streamSnapshot['desc'],
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontFamily: gilroyLight, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    'Eden işleri',
                    maxLines: 2,
                    style: TextStyle(color: Colors.black, fontFamily: gilroyBold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          StreamBuilder(
              stream: FirebaseFirestore.instance.collection('poets').doc(streamSnapshot.id).collection('images').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot2) {
                if (streamSnapshot2.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (streamSnapshot2.hasError) {
                  return const Center(
                      child: Text(
                    "Has some error",
                    style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 22),
                  ));
                } else if (streamSnapshot2.data!.docs.isEmpty) {
                  return const Center(
                    child: Text(
                      "No users",
                      style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 22),
                    ),
                  );
                }
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  addAutomaticKeepAlives: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: streamSnapshot2.data!.docs.length,
                  itemBuilder: (context, index) {
                    return card(streamSnapshot2, index);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.count(
                    1,
                    1.5,
                  ),
                );
              })
        ],
      ),
    );
  }

  final HomeController homeController = Get.put(HomeController());

  GestureDetector card(AsyncSnapshot<QuerySnapshot<Object?>> streamSnapshot, int index) {
    return GestureDetector(
      onTap: () {
        Get.to(() => PhotoViewPage(
              image: streamSnapshot.data!.docs[index]['imageURL'],
              name: streamSnapshot.data!.docs[index]['imageName'],
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
                    imageUrl: streamSnapshot.data!.docs[index]['imageURL'],
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
            child: Text(
              streamSnapshot.data!.docs[index]['imageName'],
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(color: Colors.black, fontFamily: gilroyMedium, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

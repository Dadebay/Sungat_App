import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:sekillendirisungaty/app/modules/cards/books_card.dart';
import 'package:sekillendirisungaty/constants/custom_app_bar.dart';

import '../../../../constants/constants.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());

  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(backArrow: true, actionIcon: false, name: 'books'),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('books').snapshots(),
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
                  return BookCard(
                    index: index,
                    bookInGDrive: streamSnapshot.data!.docs[index]['bookInGDrive'],
                    bookURL: streamSnapshot.data!.docs[index]['bookURL'],
                    authorName: streamSnapshot.data!.docs[index]['bookAwtor'],
                    image: streamSnapshot.data!.docs[index]['bookImage'],
                    name: streamSnapshot.data!.docs[index]['bookName'],
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.count(
                  1,
                  index % 2 == 0 ? 1.7 : 1.7,
                ),
              );
            }));
  }
}

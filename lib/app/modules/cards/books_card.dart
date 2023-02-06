import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../../constants/widgets.dart';
import '../home/controllers/home_controller.dart';
import '../home/views/book_read_page.dart';

class BookCard extends StatelessWidget {
  final int index;
  final String name;
  final String image;
  final String authorName;
  final String bookURL;
  final HomeController homeController = Get.put(HomeController());

  BookCard({super.key, required this.index, required this.name, required this.image, required this.authorName, required this.bookURL});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => BookReadPage(
              offlineBook: index == 0 ? true : false,
              bookURL: index == 0 ? '' : bookURL,
              bookName: name,
            ));
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: borderRadius15, boxShadow: [BoxShadow(color: Colors.grey.shade200, spreadRadius: 10, blurRadius: 10)]),
            margin: EdgeInsets.only(top: 100, left: 8, right: 8, bottom: 10),
            width: Get.size.width,
            child: Column(
              children: [
                Expanded(flex: 5, child: SizedBox.shrink()),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          index == 0 ? "Türkmenistanyň şekillendiriş sungatynyň taryhy" : name,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(color: Colors.black, fontFamily: gilroyMedium, fontSize: 16),
                        ),
                        Text(
                          index == 0 ? "Ýagşymyradow N" : authorName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(color: Colors.black54, fontFamily: gilroyLight, fontSize: 14),
                        ),
                        SizedBox(
                            width: Get.size.width,
                            child: ElevatedButton(
                                onPressed: () {
                                  Get.to(() => BookReadPage(
                                        offlineBook: index == 0 ? true : false,
                                        bookName: name,
                                        bookURL: index == 0 ? '' : bookURL,
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  backgroundColor: homeController.findMainColor.value == 1
                                      ? kPrimaryColor.withOpacity(0.4)
                                      : homeController.findMainColor.value == 2
                                          ? kPrimaryColor1.withOpacity(0.4)
                                          : kPrimaryColor2.withOpacity(0.4),
                                  shape: RoundedRectangleBorder(borderRadius: borderRadius10),
                                ),
                                child: Text('read'.tr, style: TextStyle(color: Colors.black, fontFamily: gilroyRegular))))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            height: 190,
            width: 150,
            decoration: BoxDecoration(color: Colors.amber, boxShadow: [BoxShadow(color: Colors.grey.shade100, spreadRadius: 3, blurRadius: 3)], borderRadius: borderRadius10),
            child: ClipRRect(
              borderRadius: borderRadius10,
              child: index == 0
                  ? Image.asset(
                      'assets/pdf/1.png',
                      fit: BoxFit.fitWidth,
                    )
                  : CachedNetworkImage(
                      fadeInCurve: Curves.ease,
                      imageUrl: image,
                      imageBuilder: (context, imageProvider) => Container(
                        width: Get.size.width,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius10,
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fill,
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
        ],
      ),
    );
  }
}

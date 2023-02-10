import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/constants.dart';
import '../controllers/home_controller.dart';
import 'banner_card.dart';

class Banners extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('banners').snapshots(),
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
        return Column(
          children: [
            CarouselSlider.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index, count) {
                return index == 0
                    ? Container(
                        margin: const EdgeInsets.all(8),
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius30,
                          color: Colors.yellow.shade100,
                        ),
                        padding: EdgeInsets.all(12),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Türkmenistanyň Prezidenti Serdar BERDIMUHAMEDOW:",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xff008e34), fontFamily: gilroyBold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                '-MILLI MEDENIÝET WE SUNGAT HÄZIRKI DÖWÜRDE JEMGYÝETIMIZIŇ RUHY GÜÝJÜNE, ÝURDUMYZYŇ DÖREDIJILIK KUWWATYNA ÖWRÜLÝÄR',
                                style: TextStyle(color: Color(0xff008e34), fontFamily: gilroyRegular, fontStyle: FontStyle.italic),
                              )
                            ],
                          ),
                        ),
                      )
                    : BannerCard(
                        image: streamSnapshot.data!.docs[index]['banners'],
                      );
              },
              options: CarouselOptions(
                onPageChanged: (index, CarouselPageChangedReason a) {
                  Get.find<HomeController>().bannerDotsIndex.value = index;
                },
                height: size.width >= 800 ? 320 : 220,
                viewportFraction: 1.0,
                autoPlay: true,
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 2000),
              ),
            ),
            dots(6, size)
          ],
        );
      },
    );
  }

  SizedBox dots(int count, Size size) {
    return SizedBox(
      height: size.width >= 800 ? 40 : 20,
      width: Get.size.width,
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: count,
          itemBuilder: (BuildContext context, int index) {
            return Obx(() {
              return AnimatedContainer(
                margin: EdgeInsets.symmetric(horizontal: size.width >= 800 ? 8 : 4),
                duration: const Duration(milliseconds: 500),
                curve: Curves.decelerate,
                height: 16,
                width: 10,
                decoration: BoxDecoration(
                  color: Get.find<HomeController>().bannerDotsIndex.value == index ? Colors.transparent : Colors.grey,
                  shape: BoxShape.circle,
                  border: Get.find<HomeController>().bannerDotsIndex.value == index ? Border.all(color: kPrimaryColor, width: 3) : Border.all(color: Colors.white),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}

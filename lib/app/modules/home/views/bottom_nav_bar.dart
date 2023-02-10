// ignore_for_file: deprecated_member_use

import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sekillendirisungaty/app/modules/home/views/home_view.dart';
import 'package:sekillendirisungaty/app/modules/poets/views/poets_view.dart';
import 'package:sekillendirisungaty/app/modules/settings/views/settings_view.dart';
import 'package:sekillendirisungaty/app/modules/videos/views/videos_view.dart';
import 'package:sekillendirisungaty/constants/constants.dart';

import '../controllers/home_controller.dart';
import 'banners.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: homeController.findMainColor.value == 1
              ? kPrimaryColor
              : homeController.findMainColor.value == 2
                  ? kPrimaryColor1
                  : kPrimaryColor2,
          title: Text(
            appName.tr,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: gilroyMedium,
              fontSize: 22,
            ),
          ),
          centerTitle: true,
          leadingWidth: 70,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => SettingsView());
                },
                icon: Icon(
                  IconlyBold.setting,
                  color: Colors.white,
                ))
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset(
              'assets/image/logo.png',
            ),
          ),
        ),
        body: ListView(
          children: [
            Banners(),
            GestureDetector(
              onTap: () {
                Get.to(() => HomeView());
              },
              child: Container(
                width: Get.size.width,
                height: 200,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.4), borderRadius: borderRadius30),
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: ClipRRect(
                      borderRadius: borderRadius30,
                      child: Image.asset(
                        'assets/image/k3.png',
                        fit: BoxFit.cover,
                      ),
                    )),
                    Positioned.fill(
                        child: Container(
                      decoration: BoxDecoration(color: Colors.black54, borderRadius: borderRadius30),
                    )),
                    Positioned.fill(
                        child: Center(
                      child: Text(
                        'books'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontFamily: gilroyBold, fontSize: 45),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => VideosView());
              },
              child: Container(
                width: Get.size.width,
                height: 200,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.4), borderRadius: borderRadius30),
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: ClipRRect(
                      borderRadius: borderRadius30,
                      child: Image.asset(
                        'assets/image/v1.png',
                        fit: BoxFit.cover,
                      ),
                    )),
                    Positioned.fill(
                        child: Container(
                      decoration: BoxDecoration(color: Colors.black54, borderRadius: borderRadius30),
                    )),
                    Positioned.fill(
                        child: Center(
                      child: Text(
                        'videos'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontFamily: gilroyBold, fontSize: 45),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => PoetsView());
              },
              child: Container(
                width: Get.size.width,
                height: 200,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.4), borderRadius: borderRadius30),
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: ClipRRect(
                      borderRadius: borderRadius30,
                      child: Image.asset(
                        'assets/image/w1.png',
                        fit: BoxFit.cover,
                      ),
                    )),
                    Positioned.fill(
                        child: Container(
                      decoration: BoxDecoration(color: Colors.black54, borderRadius: borderRadius30),
                    )),
                    Positioned.fill(
                        left: 15,
                        right: 15,
                        child: Center(
                          child: Text(
                            'poets1'.tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: gilroyBold, fontSize: 35),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

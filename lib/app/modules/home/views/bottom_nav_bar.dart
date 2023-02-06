// ignore_for_file: deprecated_member_use

import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:sekillendirisungaty/app/modules/home/views/home_view.dart';
import 'package:sekillendirisungaty/app/modules/poets/views/poets_view.dart';
import 'package:sekillendirisungaty/constants/constants.dart';

import '../../settings/views/settings_view.dart';
import '../../videos/views/videos_view.dart';
import '../controllers/home_controller.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final HomeController homeController = Get.put(HomeController());

  PageController tabBarPageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageView(
          controller: tabBarPageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeView(),
            VideosView(),
            PoetsView(),
            SettingsView(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(
              height: 1,
              color: Colors.grey.shade100,
              thickness: 1,
            ),
            GNav(
                backgroundColor: Colors.white,
                rippleColor: Colors.white,
                hoverColor: Colors.white,
                tabBackgroundColor: homeController.findMainColor.value == 1
                    ? kPrimaryColor.withOpacity(0.6)
                    : homeController.findMainColor.value == 2
                        ? kPrimaryColor1.withOpacity(0.6)
                        : kPrimaryColor2.withOpacity(0.6),
                gap: 6,
                activeColor: Colors.blueGrey,
                duration: Duration(milliseconds: 400),
                color: Colors.black,
                tabMargin: EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
                curve: Curves.easeInOut,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                selectedIndex: tabBarPageController.initialPage,
                onTabChange: (int index) {
                  selectedIndex = index;
                  setState(() {});
                  tabBarPageController.jumpToPage(index);
                },
                tabs: [
                  GButton(
                    icon: selectedIndex == 0 ? IconlyBold.bookmark : IconlyLight.bookmark,
                    iconActiveColor: Colors.black,
                    text: 'books'.tr,
                    haptic: true,
                    textStyle: TextStyle(fontSize: 14, fontFamily: gilroyMedium, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  GButton(
                    icon: selectedIndex == 1 ? IconlyBold.discovery : IconlyLight.discovery,
                    iconActiveColor: Colors.black,
                    text: 'videos'.tr,
                    textStyle: TextStyle(fontSize: 14, fontFamily: gilroyMedium, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  GButton(
                    icon: selectedIndex == 2 ? IconlyBold.user3 : IconlyLight.user3,
                    iconActiveColor: Colors.black,
                    text: 'poets'.tr,
                    textStyle: TextStyle(fontSize: 14, fontFamily: gilroyMedium, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  GButton(
                    icon: selectedIndex == 3 ? IconlyBold.setting : IconlyLight.setting,
                    iconActiveColor: Colors.black,
                    text: 'settings'.tr,
                    textStyle: TextStyle(fontSize: 14, fontFamily: gilroyMedium, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ]),
          ],
        ));
  }
}

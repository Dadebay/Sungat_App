import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:sekillendirisungaty/app/modules/home/views/connection_check_page.dart';

import '../app/modules/home/controllers/home_controller.dart';
import 'constants.dart';

dynamic noBannerImage() {
  return Center(child: Text('noImage'.tr));
}

final HomeController homeController = Get.put(HomeController());

dynamic spinKit() {
  return CircularProgressIndicator(
    color: homeController.findMainColor.value == 1
        ? kPrimaryColor
        : homeController.findMainColor.value == 2
            ? kPrimaryColor1
            : kPrimaryColor2,
  );
}

SnackbarController showSnackBar(String title, String subtitle, Color color) {
  SnackbarController.cancelAllSnackbars();
  return Get.snackbar(
    title,
    subtitle,
    snackStyle: SnackStyle.FLOATING,
    titleText: title == ''
        ? const SizedBox.shrink()
        : Text(
            title.tr,
            style: const TextStyle(fontFamily: gilroyMedium, fontSize: 18, color: Colors.white),
          ),
    messageText: Text(
      subtitle.tr,
      style: const TextStyle(fontFamily: gilroyRegular, fontSize: 16, color: Colors.white),
    ),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: color,
    borderRadius: 20.0,
    animationDuration: const Duration(milliseconds: 500),
    margin: const EdgeInsets.all(8),
  );
}

Container divider() {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Divider(
      color: homeController.findMainColor.value == 1
          ? kPrimaryColor.withOpacity(0.4)
          : homeController.findMainColor.value == 2
              ? kPrimaryColor1.withOpacity(0.4)
              : kPrimaryColor2.withOpacity(0.4),
      thickness: 2,
    ),
  );
}

Padding namePart({required String text, required bool removeIcon, required Function() onTap}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text.tr, style: const TextStyle(color: Colors.black, fontFamily: gilroyRegular, fontSize: 22)),
        removeIcon
            ? SizedBox.shrink()
            : IconButton(
                onPressed: onTap,
                icon: Icon(
                  IconlyLight.arrowRightCircle,
                  color: homeController.findMainColor.value == 1
                      ? kPrimaryColor
                      : homeController.findMainColor.value == 2
                          ? kPrimaryColor1
                          : kPrimaryColor2,
                  size: 25,
                ),
              )
      ],
    ),
  );
}

void changeLanguage() {
  final HomeController homeController = Get.put(HomeController());

  Get.bottomSheet(
    Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                Text(
                  'select_language'.tr,
                  style: const TextStyle(color: Colors.black, fontFamily: gilroyBold, fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(CupertinoIcons.xmark_circle, size: 22, color: Colors.black),
                )
              ],
            ),
          ),
          divider(),
          ListTile(
            onTap: () {
              homeController.switchLang('tr');
              Get.back();
            },
            leading: const CircleAvatar(
              backgroundImage: AssetImage(
                tmIcon,
              ),
              backgroundColor: Colors.black,
              radius: 20,
            ),
            title: const Text(
              'Türkmen',
              style: TextStyle(color: Colors.black),
            ),
          ),
          divider(),
          ListTile(
            onTap: () {
              homeController.switchLang('ru');
              Get.back();
            },
            leading: const CircleAvatar(
              backgroundImage: AssetImage(
                ruIcon,
              ),
              radius: 20,
              backgroundColor: Colors.black,
            ),
            title: const Text(
              'Русский',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    ),
  );
}

void changeColor(BuildContext context) {
  final HomeController homeController = Get.put(HomeController());

  Get.bottomSheet(
    Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                Text(
                  'appColor1'.tr,
                  style: const TextStyle(color: Colors.black, fontFamily: gilroyBold, fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(CupertinoIcons.xmark_circle, size: 22, color: Colors.black),
                )
              ],
            ),
          ),
          divider(),
          ListTile(
            onTap: () {
              homeController.saveColorInt(1);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                return ConnectionCheckpage();
              }));
            },
            leading: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
            ),
            title: Text(
              'appColor2'.tr,
              style: TextStyle(color: Colors.black),
            ),
          ),
          divider(),
          ListTile(
            onTap: () {
              homeController.saveColorInt(2);

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                return ConnectionCheckpage();
              }));
            },
            leading: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor1),
            ),
            title: Text(
              'appColor3'.tr,
              style: TextStyle(color: Colors.black),
            ),
          ),
          divider(),
          ListTile(
            onTap: () {
              homeController.saveColorInt(3);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                return ConnectionCheckpage();
              }));
            },
            leading: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor2),
            ),
            title: Text(
              'appColor4'.tr,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    ),
  );
}

Padding textpart(String name, bool value) {
  return Padding(
    padding: EdgeInsets.only(left: 8, top: value ? 15 : 30),
    child: Text(
      name.tr,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: const TextStyle(fontSize: 18, color: Colors.black, fontFamily: gilroyMedium),
    ),
  );
}

void defaultBottomSheet({required String name, required Widget child}) {
  Get.bottomSheet(
    Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                Text(
                  name.tr,
                  style: const TextStyle(color: Colors.black, fontFamily: gilroyBold, fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(CupertinoIcons.xmark_circle, size: 22, color: Colors.black),
                )
              ],
            ),
          ),
          const Divider(
            color: kBlackColor,
            thickness: 1,
          ),
          Center(
            child: child,
          )
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sekillendirisungaty/app/modules/home/controllers/home_controller.dart';
import 'package:sekillendirisungaty/app/modules/settings/views/used_book.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../constants/constants.dart';
import '../../../../constants/custom_app_bar.dart';
import '../../../../constants/settings_button.dart';
import '../../../../constants/widgets.dart';
import 'about_us.dart';

class SettingsView extends StatefulWidget {
  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final storage = GetStorage();
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(backArrow: true, actionIcon: false, name: 'settings'),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SettingButton(
            name: Get.locale!.toLanguageTag() == 'tm' ? 'Türkmen dili' : 'Rus dili',
            onTap: () {
              changeLanguage();
              setState(() {});
            },
            icon: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: homeController.findMainColor.value == 1
                      ? kPrimaryColor.withOpacity(0.4)
                      : homeController.findMainColor.value == 2
                          ? kPrimaryColor1.withOpacity(0.4)
                          : kPrimaryColor2.withOpacity(0.4)),
              child: ClipRRect(
                borderRadius: borderRadius30,
                child: Image.asset(
                  Get.locale!.toLanguageTag() == 'tm' ? tmIcon : ruIcon,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SettingButton(
            name: 'appColor',
            onTap: () {
              changeColor(context);
              setState(() {});
            },
            icon: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: homeController.findMainColor.value == 1
                      ? kPrimaryColor
                      : homeController.findMainColor.value == 2
                          ? kPrimaryColor1
                          : kPrimaryColor2),
            ),
          ),
          SettingButton(
            name: 'usedBook',
            onTap: () {
              Get.to(() => UsedBooks());
            },
            icon: Icon(
              IconlyBroken.arrowRightCircle,
              color: Colors.black,
            ),
          ),
          SettingButton(
            name: 'aboutUs',
            onTap: () {
              Get.to(() => AboutUS());
            },
            icon: Icon(
              IconlyBroken.arrowRightCircle,
              color: Colors.black,
            ),
          ),
          SettingButton(
            name: 'share',
            onTap: () {
              Share.share(appShareLink, subject: appName);
            },
            icon: Icon(
              IconlyBroken.arrowRightCircle,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  dynamic launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

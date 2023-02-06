// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, avoid_implementing_value_types

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

import '../app/modules/home/controllers/home_controller.dart';
import 'constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final bool backArrow;
  final Widget? icon;
  final bool actionIcon;
  final String name;

  CustomAppBar({
    required this.backArrow,
    required this.actionIcon,
    required this.name,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget get child => Text('ad');

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 1);
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0,
      centerTitle: true,
      leadingWidth: 40,
      leading: backArrow
          ? Padding(
              padding: const EdgeInsets.only(left: 8),
              child: IconButton(
                color: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  IconlyLight.arrowLeftCircle,
                  color: Colors.white,
                  size: 22,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            )
          : SizedBox.shrink(),
      actions: [
        if (actionIcon)
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: icon,
          )
        else
          SizedBox.shrink()
      ],
      automaticallyImplyLeading: false,
      backgroundColor: homeController.findMainColor.value == 1
          ? kPrimaryColor
          : homeController.findMainColor.value == 2
              ? kPrimaryColor1
              : kPrimaryColor2,
      title: Text(
        name.tr,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontFamily: gilroyMedium,
          fontSize: sizeWidth > 800 ? 35 : 22,
        ),
      ),
    );
  }
}

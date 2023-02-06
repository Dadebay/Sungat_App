import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sekillendirisungaty/app/modules/poets/controllers/poets_controller.dart';

import '../../../constants/constants.dart';
import '../home/controllers/home_controller.dart';

class DownloadButton extends StatelessWidget {
  DownloadButton({super.key, required this.onTap});
  final Function() onTap;
  final PoetsController controller = Get.put(PoetsController());
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Center(
          child: Container(
              padding: EdgeInsets.all(8),
              width: Get.size.width,
              child: ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: controller.downloadButtonStatus.value ? 7.5 : 10),
                    backgroundColor: homeController.findMainColor.value == 1
                        ? kPrimaryColor
                        : homeController.findMainColor.value == 2
                            ? kPrimaryColor1
                            : kPrimaryColor2,
                    shape: RoundedRectangleBorder(borderRadius: borderRadius15),
                  ),
                  child: controller.downloadButtonStatus.value
                      ? Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 3,
                          ),
                        )
                      : Text('downloadFiles'.tr, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: gilroyBold)))));
    });
  }
}

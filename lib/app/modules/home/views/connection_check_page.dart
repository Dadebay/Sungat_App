// ignore_for_file: file_names, always_use_package_imports

import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sekillendirisungaty/app/modules/home/controllers/home_controller.dart';

import '../../../../constants/constants.dart';
import 'bottom_nav_bar.dart';

class ConnectionCheckpage extends StatefulWidget {
  @override
  _ConnectionCheckpageState createState() => _ConnectionCheckpageState();
}

class _ConnectionCheckpageState extends State with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    checkConnection();
    homeController.returnMainColor();
  }

  void checkConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result.first.rawAddress.isNotEmpty) {
        await Future.delayed(const Duration(seconds: 4), () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return BottomNavBar();
              },
            ),
          );
        });
      }
    } on SocketException catch (_) {
      _showDialog();
    }
  }

  final HomeController homeController = Get.put(HomeController());

  void _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: borderRadius20),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
                decoration: const BoxDecoration(color: Colors.white, borderRadius: borderRadius20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'noConnection1'.tr,
                      style: TextStyle(
                        fontSize: 24.0,
                        color: homeController.findMainColor.value == 1
                            ? kPrimaryColor
                            : homeController.findMainColor.value == 2
                                ? kPrimaryColor1
                                : kPrimaryColor2,
                        fontFamily: gilroyMedium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Text(
                        'noConnection2'.tr,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: gilroyRegular,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Future.delayed(const Duration(milliseconds: 1000), () {
                          checkConnection();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: homeController.findMainColor.value == 1
                            ? kPrimaryColor
                            : homeController.findMainColor.value == 2
                                ? kPrimaryColor1
                                : kPrimaryColor2,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadius10,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 14),
                      ),
                      child: Text(
                        'noConnection3'.tr,
                        style: const TextStyle(fontSize: 18, color: Colors.white, fontFamily: gilroyMedium),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 70,
                minRadius: 60,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/icons/noconnection.gif',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
              child: Text(
                "Türkmenistanyň Döwlet çeperçilik akademiýasy.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey.shade800, fontFamily: gilroyBold, fontSize: 22),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/image/logo3.png',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              "Jumaýew Serdar Salamowiç",
              style: TextStyle(color: Colors.black, fontFamily: gilroyRegular, fontSize: 18),
            ),
            LinearProgressIndicator(
              color: homeController.findMainColor.value == 1
                  ? kPrimaryColor
                  : homeController.findMainColor.value == 2
                      ? kPrimaryColor1
                      : kPrimaryColor2,
            )
          ],
        ),
      ),
    );
  }
}

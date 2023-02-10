import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sekillendirisungaty/constants/constants.dart';
import 'package:sekillendirisungaty/constants/custom_app_bar.dart';

class AboutUS extends StatelessWidget {
  const AboutUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: true, actionIcon: false, name: 'aboutUs'.tr),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'appCreator'.tr,
              style: TextStyle(color: Colors.black, fontFamily: gilroyBold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                '- Türkmenistanyň Döwlet çeperçilik  akademiýasynyň talyby : Serdar Jumaýew Salamowiç',
                style: TextStyle(color: Colors.black, fontFamily: gilroyMedium, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: file_names, void_checks, always_use_package_imports

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sekillendirisungaty/app/modules/poets/controllers/poets_controller.dart';
import 'package:sekillendirisungaty/constants/custom_app_bar.dart';
import 'package:sekillendirisungaty/constants/widgets.dart';

import '../../cards/download_button.dart';

class PhotoViewPage extends StatefulWidget {
  final String image;
  final String name;
  const PhotoViewPage({required this.image, required this.name});

  @override
  State<PhotoViewPage> createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  @override
  void initState() {
    Get.find<PoetsController>().downloadButtonStatus.value = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(backArrow: true, actionIcon: false, name: widget.name),
      bottomSheet: Container(
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DownloadButton(onTap: () async {
              Get.find<PoetsController>().downloadButtonStatus.value = !Get.find<PoetsController>().downloadButtonStatus.value;
              var response = await Dio().get(widget.image, options: Options(responseType: ResponseType.bytes));

              if (response.statusCode == 200) {
                final result = await ImageGallerySaver.saveImage(Uint8List.fromList(response.data), quality: 60, name: widget.name);
                if (result['isSuccess'] == true) {
                  showSnackBar('imageDownloadTitle', 'imageDownloadSubtitle', Colors.green);
                  Get.find<PoetsController>().downloadButtonStatus.value = !Get.find<PoetsController>().downloadButtonStatus.value;
                } else {
                  showSnackBar('noConnection3', 'error', Colors.red);
                }
              } else {
                showSnackBar('noConnection3', 'error', Colors.red);
              }
            }),
          ],
        ),
      ),
      body: PhotoView(
        minScale: 0.4,
        maxScale: 2.0,
        imageProvider: NetworkImage(widget.image),
        tightMode: false,
        errorBuilder: (context, url, error) => const Icon(Icons.error_outline),
        loadingBuilder: (context, url) => Center(child: spinKit()),
      ),
    );
  }
}

// ignore_for_file: file_names, void_checks, always_use_package_imports

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sekillendirisungaty/constants/custom_app_bar.dart';
import 'package:sekillendirisungaty/constants/widgets.dart';

class PhotoViewPage extends StatefulWidget {
  final String image;
  final String name;
  const PhotoViewPage({required this.image, required this.name});

  @override
  State<PhotoViewPage> createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(backArrow: true, actionIcon: false, name: widget.name),
      body: Center(
        child: PhotoView(
          minScale: 0.4,
          maxScale: 2.0,
          imageProvider: NetworkImage(widget.image),
          tightMode: false,
          errorBuilder: (context, url, error) => const Icon(Icons.error_outline),
          loadingBuilder: (context, url) => Center(child: spinKit()),
        ),
      ),
    );
  }
}

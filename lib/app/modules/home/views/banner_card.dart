import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import '../../../../constants/widgets.dart';

class BannerCard extends StatelessWidget {
  final String image;
  const BannerCard({
    Key? key,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(8),
      width: size.width,
      decoration: const BoxDecoration(
        borderRadius: borderRadius10,
      ),
      child: ClipRRect(
        borderRadius: borderRadius10,
        child: CachedNetworkImage(
          fadeInCurve: Curves.ease,
          imageUrl: image,
          imageBuilder: (context, imageProvider) => Container(
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: borderRadius30,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          placeholder: (context, url) => Center(child: spinKit()),
          errorWidget: (context, url, error) => Center(
            child: Text('Error'),
          ),
        ),
      ),
    );
  }
}

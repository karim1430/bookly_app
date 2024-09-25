import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_route.dart';

class FeatureBookItem extends StatelessWidget {
  const FeatureBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6),
      child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: imageUrl,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              progressIndicatorBuilder: (context, url, progress) =>
                  const Center(
                child: RefreshProgressIndicator(),
              ),
            ),
          )),
    );
  }
}

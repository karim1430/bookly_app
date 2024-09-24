import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatureBookItem extends StatelessWidget {
  const FeatureBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}

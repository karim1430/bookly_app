import 'package:bookly_app/core/utils/app_route.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 120,
            width: 120,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoute.kSearchView);
              },
              icon: const Icon(Icons.search)),
        ],
      ),
    );
  }
}

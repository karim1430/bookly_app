import 'dart:developer';

import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: CustomButtom(
          backgroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          text: 'Free €',
        )),
        Expanded(
            child: CustomButtom(
          onPressed: () async {
            if (bookModel.volumeInfo.previewLink != null) {
              final Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              log('Preview Link: ${bookModel.volumeInfo.previewLink}');
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              } else {
                log('Could not launch $uri');
              }
            } else {
              log('Preview Link is null');
            }
          },
          backgroundColor: const Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          text: 'Free Preview',
        )),
      ],
    );
  }
}

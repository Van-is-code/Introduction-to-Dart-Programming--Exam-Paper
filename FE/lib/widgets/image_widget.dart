import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;

  const ImageWidget({Key? key, required this.imageUrl, this.fit = BoxFit.cover}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return imageUrl.isNotEmpty
        ? Image.network(
      imageUrl,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey[300],
          child: const Icon(Icons.broken_image, size: 50, color: Colors.grey),
        );
      },
    )
        : Container(
      color: Colors.grey[300],
      child: const Icon(Icons.image, size: 50, color: Colors.grey),
    );
  }
}
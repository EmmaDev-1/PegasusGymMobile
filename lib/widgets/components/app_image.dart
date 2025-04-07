import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AppImage extends StatelessWidget {
  final String imageUrl;
  final String? placeholderPath;
  final BorderRadius? borderRadius;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Color borderColor;
  final double borderWidth;

  const AppImage({
    required this.imageUrl,
    super.key,
    this.placeholderPath,
    this.borderRadius,
    this.fit = BoxFit.cover,
    required this.width,
    this.height,
    this.borderColor = Colors.white, // 👈 color por defecto
    this.borderWidth = 0.0, // 👈 sin borde por defecto
  });

  bool get _isNetworkImage => imageUrl.startsWith('http');

  @override
  Widget build(BuildContext context) {
    final resolvedRadius = borderRadius ?? BorderRadius.zero;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: borderWidth),
        borderRadius: resolvedRadius,
      ),
      child: ClipRRect(
        borderRadius: resolvedRadius,
        child:
            _isNetworkImage
                ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: fit,
                  width: width,
                  height: height,
                  placeholder:
                      (context, url) =>
                          placeholderPath != null
                              ? Image.asset(
                                placeholderPath!,
                                fit: fit,
                                width: width,
                                height: height,
                              )
                              : const SizedBox.shrink(),
                  errorWidget:
                      (context, url, error) => const Icon(Icons.broken_image),
                )
                : Image.asset(imageUrl, fit: fit, width: width, height: height),
      ),
    );
  }
}

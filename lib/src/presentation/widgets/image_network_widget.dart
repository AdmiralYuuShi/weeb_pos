import 'package:flutter/material.dart';
import '../../core/core.dart';

class ImageNetworkWidget extends StatelessWidget {
  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BorderRadius borderRadius;
  final Alignment alignment;
  final Color? color;
  final CustomClipper<RRect>? clipper;

  const ImageNetworkWidget({
    Key? key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = BorderRadius.zero,
    this.alignment = Alignment.center,
    this.color = AppColors.disabled,
    this.clipper,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      clipper: clipper,
      child: _buildImage(),
    );
  }

  Widget _buildImage() {
    return imageUrl == null || imageUrl!.isEmpty
        ? Container(
            height: height,
            width: width,
            color: color,
            alignment: alignment,
          )
        : Image.network(
            imageUrl!,
            height: height,
            width: width,
            fit: fit,
            alignment: alignment,
            errorBuilder: (context, e, stackTrace) {
              return Container(
                height: height,
                width: width,
                color: color,
                alignment: alignment,
              );
            },
          );
  }
}

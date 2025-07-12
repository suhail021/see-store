import 'package:flutter/material.dart';
import 'package:google/utils/constants/colors.dart';
import 'package:google/utils/constants/sizes.dart';


class SeeRoundedImage extends StatelessWidget {
  const SeeRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius =true,
    this.border,
    this.backgroundColor =SeeColors.light,
    this.fit= BoxFit.fill,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
     this.borderRadius = SeeSizes.md,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: border,
        color: backgroundColor,
      ),
      child: ClipRRect(
        borderRadius:
            applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
        child: Image(
          image:
              isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl),
          fit: fit,
        ),
      ),
    );
  }
}

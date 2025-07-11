import 'package:flutter/material.dart';
import 'package:google/utils/constants/colors.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/helpers/helper_functions.dart';


class SeeVerticalImageText extends StatelessWidget {
  const SeeVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = SeeColors.white,
    this.backgroundColor,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = SeeHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SeeSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(SeeSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ??
                    (dark ? SeeColors.black : SeeColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? SeeColors.light : SeeColors.dark,
                ),
              ),
            ),
            SizedBox(height: SeeSizes.sm),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google/utils/constants/colors.dart';
import 'package:google/utils/constants/image_strings.dart';
import 'package:google/utils/constants/sizes.dart';

class SeeSocialButtons extends StatelessWidget {
  const SeeSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: SeeColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              height: SeeSizes.iconMd,
              width: SeeSizes.iconMd,
              image: AssetImage(SeeImage.google),
            ),
          ),
        ),
        SizedBox(width: SeeSizes.spaceBtwItems),

        Container(
          decoration: BoxDecoration(
            border: Border.all(color: SeeColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              height: SeeSizes.iconMd,
              width: SeeSizes.iconMd,
              image: AssetImage(SeeImage.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

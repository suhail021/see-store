import 'package:flutter/material.dart';
import 'package:google/utils/constants/colors.dart';
import 'package:google/utils/device/device_utility.dart';
import 'package:google/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class SeeSearchContainer extends StatelessWidget {
  const SeeSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = SeeHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SeeSizes.defaultSpace),
        child: Container(
          width: SeeDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(SeeSizes.md),
          decoration: BoxDecoration(
            color:
                showBackground
                    ? dark
                        ? SeeColors.dark
                        : SeeColors.lightBackground
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(SeeSizes.cardRadiusLg),
            border:
                showBorder && !dark ? Border.all(color: SeeColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: SeeColors.darkerGrey),
              const SizedBox(width: SeeSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}

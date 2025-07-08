import 'package:flutter/material.dart';
import 'package:google/utils/constants/exports.dart';
import 'package:google/utils/device/device_utility.dart';
import 'package:google/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = SeeHelperFunctions.isDarkMode(context);

    return Positioned(
      right: SeeSizes().defaultSpace,
      bottom: SeeDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? SeeColors().primaryBackground : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

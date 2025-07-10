import 'package:flutter/material.dart';
import 'package:google/features/authentication/controllrts/onboarding/onboarding_controller.dart';
import 'package:google/utils/constants/colors.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/device/device_utility.dart';
import 'package:google/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
 const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =OnboardingController.instance;
    final dark = SeeHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: SeeDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: SeeSizes.defaultSpace,

      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor:
              dark ? SeeColors.lightBackground : SeeColors.darkBackground,
          dotHeight: 6,
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:google/features/authentication/controllrts/onboarding/onboarding_controller.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SeeDeviceUtils.getAppBarHeight(),
      right: SeeSizes.defaultSpace,
      child: TextButton(onPressed: () {
        OnboardingController.instance.skipPage();
      }, child: Text("Skip")),
    );
  }
}

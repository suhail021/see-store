import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google/features/authentication/controllrts/onboarding/onboarding_controller.dart';
import 'package:google/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:google/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:google/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:google/features/authentication/screens/onboarding/widgets/onboardingnextbutton.dart';
import 'package:google/utils/constants/image_strings.dart';
import 'package:google/utils/constants/text_strings.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
     final controller =Get.put(OnboardingController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: SeeImage.onBoardingImage1,
                title: SeeTexts.onBoardingTitle1,
                subtitle: SeeTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SeeImage.onBoardingImage2,
                title: SeeTexts.onBoardingTitle2,
                subtitle: SeeTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SeeImage.onBoardingImage3,
                title: SeeTexts.onBoardingTitle3,
                subtitle: SeeTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          OnboardingDotNavigation(),

          OnboardingNextButton(),
        ],
      ),
    );
  }
}

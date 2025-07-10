import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google/common/widgets/success_screen/success_screen.dart';
import 'package:google/features/authentication/screens/login/login_screen.dart';
import 'package:google/utils/constants/image_strings.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:google/utils/exports.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(SeeSizes.defaultSpace),

          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(SeeImage.deliveredEmailIllustration),
                width: SeeHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: SeeSizes.spaceBtwSections),

              ///Title & SubTitle
              Text(
                SeeTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SeeSizes.spaceBtwItems),
              Text(
                "support@seestore.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SeeSizes.spaceBtwItems),
              Text(
                SeeTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SeeSizes.spaceBtwItems),

              ///Buttons
              ElevatedButton(
                onPressed:
                    () => Get.to(
                      () => SuccessScreen(
                        image: SeeImage.staticSuccessIllustration,
                        title: SeeTexts.yourAccountCreatedTitle,
                        subTitle: SeeTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      ),
                    ),
                child: Text(SeeTexts.seeContinue),
              ),
              const SizedBox(height: SeeSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(SeeTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google/common/styles/spacing_styles.dart';

import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:google/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });
  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SeeSpacingStyle.pagePaddingWithNoTop,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: SeeHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: SeeSizes.spaceBtwSections),

              ///Title & SubTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: SeeSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SeeSizes.spaceBtwItems),

              ///Buttons
              ElevatedButton(
                onPressed: onPressed,
                child: Text(SeeTexts.seeContinue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

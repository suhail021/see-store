import 'package:flutter/material.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:google/utils/exports.dart';

class TermsConditionsCheckbox extends StatelessWidget {
  const TermsConditionsCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SeeHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: SeeSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${SeeTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: SeeTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? SeeColors.white : SeeColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? SeeColors.white : SeeColors.primary,
                ),
              ),
              TextSpan(
                text: " ${SeeTexts.and} ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: SeeTexts.termOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? SeeColors.white : SeeColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? SeeColors.white : SeeColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

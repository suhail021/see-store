import 'package:flutter/material.dart';
import 'package:google/utils/constants/image_strings.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:google/utils/helpers/helper_functions.dart';

class SeeLoginHeader extends StatelessWidget {
  const SeeLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
        final dark = SeeHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10,bottom: 10),
                     child: Image(
                      height: 100,
                      image: AssetImage(
                        dark ? SeeImage.darkAppLogo : SeeImage.lightAppLogo,
                      ),
                                       ),
                   ),
                  Text(
                    SeeTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: SeeSizes().sm),
                  Text(
                    SeeTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
      ],
    );
  }
}
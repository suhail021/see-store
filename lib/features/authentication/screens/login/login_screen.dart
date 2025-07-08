import 'package:flutter/material.dart';
import 'package:google/common/styles/spacing_styles.dart';
import 'package:google/utils/constants/image_strings.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:google/utils/helpers/exports.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SeeHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: SeeSpacingStyle.pagePaddingWithNoTop,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 150,
                  image: AssetImage(
                    dark ? SeeImage.lightAppLogo : SeeImage.darkAppLogo,
                  ),
                ),
                Text(
                  SeeTexts.homeAppbarTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: SeeSizes().sm,),
                     Text(
                  SeeTexts.homeAppbarTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                Form(child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefix: Icon(Iconsax.safe_home)
                      ),
                    )
                  ],
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

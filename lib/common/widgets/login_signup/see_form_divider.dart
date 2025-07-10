import 'package:flutter/material.dart';
import 'package:google/utils/constants/colors.dart';
import 'package:google/utils/helpers/helper_functions.dart';

class SeeFormDivider extends StatelessWidget {
  const SeeFormDivider({super.key, required this.dividerText});
  final String dividerText;
  @override
  Widget build(BuildContext context) {
    final dark = SeeHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? SeeColors.darkGrey : SeeColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText ,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? SeeColors.darkGrey : SeeColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

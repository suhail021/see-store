import 'package:flutter/material.dart';
import 'package:google/common/widgets/appbar/appbar.dart';
import 'package:google/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:google/utils/constants/colors.dart';
import 'package:google/utils/constants/text_strings.dart';

class SeeHomeAppBar extends StatelessWidget {
  const SeeHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SeeAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            SeeTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: SeeColors.grey),
          ),
          Text(
            SeeTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: SeeColors.white),
          ),
        ],
      ),
      action: [SeeCartCounterIcon(iconColor: SeeColors.white)],
    );
  }
}

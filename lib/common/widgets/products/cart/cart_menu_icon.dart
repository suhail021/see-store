import 'package:flutter/material.dart';
import 'package:google/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class SeeCartCounterIcon extends StatelessWidget {
  const SeeCartCounterIcon({super.key, this.iconColor, this.onPressed});
  final Color? iconColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 5,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: SeeColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text( 
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: SeeColors.white,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

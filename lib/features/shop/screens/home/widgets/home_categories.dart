import 'package:flutter/material.dart';
import 'package:google/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:google/utils/constants/image_strings.dart';


class SeeHomeCategories extends StatelessWidget {
  const SeeHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 24, right: 8),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) {
          return const SeeVerticalImageText(
            image: SeeImage.sportIcon,
            title: 'Shose',
          );
        },
      ),
    );
  }
}

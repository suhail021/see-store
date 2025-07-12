import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google/common/widgets/custom_shapes/containers/see_cirular_containar.dart';
import 'package:google/common/widgets/images/see_rounded_image.dart';
import 'package:google/features/shop/controllers/home_controller.dart';
import 'package:google/utils/constants/colors.dart';
import 'package:google/utils/constants/image_strings.dart';
import 'package:google/utils/constants/sizes.dart';

class SeePromoSlider extends StatelessWidget {
  const SeePromoSlider({super.key, required this.banners});
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url)=> Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: SeeSizes.defaultSpace),
            child: SeeRoundedImage(imageUrl:url ))).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),

        SizedBox(height: SeeSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                SeeCircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor:
                      controller.carousalCurrentIndex.value == i
                          ? SeeColors.primary
                          : Colors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

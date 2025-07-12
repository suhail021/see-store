import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:google/common/widgets/custom_shapes/containers/see_cirular_containar.dart';
import 'package:google/common/widgets/images/see_rounded_image.dart';
import 'package:google/common/widgets/texts/section_heading.dart';
import 'package:google/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:google/features/shop/screens/home/widgets/home_categories.dart';
import 'package:google/features/shop/screens/home/widgets/home_promo.dart';
import 'package:google/features/shop/screens/home/widgets/search_container.dart';
import 'package:google/utils/constants/image_strings.dart';
import 'package:google/utils/exports.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SeePrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  SeeHomeAppBar(),
                  SizedBox(height: SeeSizes.spaceBtwSections),
                  //Searchbar
                  SeeSearchContainer(
                    text: "Search in Store",
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(height: SeeSizes.spaceBtwSections),

                  //Categories with heading
                  Column(
                    children: [
                      //heading Text
                      Padding(
                        padding: EdgeInsets.only(left: SeeSizes.defaultSpace),
                        child: SeeSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: SeeSizes.spaceBtwItems),
                      //Categories
                      SeeHomeCategories(),
                    ],
                  ),
                ],
              ),
            ),
            //body
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                // horizontal: SeeSizes.defaultSpace,
                vertical: SeeSizes.sm,
              ),
              child: SeePromoSlider(banners: [
                SeeImage.promoBanner1,
                SeeImage.promoBanner2,
                SeeImage.promoBanner3,
                SeeImage.promoBanner3,
              ],),
            ),
          ],
        ),
      ),
    );
  }
}

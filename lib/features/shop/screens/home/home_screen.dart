import 'package:flutter/material.dart';
import 'package:google/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:google/features/shop/screens/home/widgets/home_app_bar.dart';

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

                  //Searchbar
                   
                  //Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

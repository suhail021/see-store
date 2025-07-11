import 'package:flutter/material.dart';
import 'package:google/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:google/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:google/features/shop/screens/home/widgets/see_cirular_containar.dart';
import 'package:google/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SeeCurvedEdgeWidget(
              child: Container(
                color: SeeColors.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -150,
                        right: -270,
                        child: SeeCircularContainer(
                          backgroundColor: SeeColors.textWhite.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        right: -300,
                        top: 100,
                        child: SeeCircularContainer(
                          backgroundColor: const Color.fromARGB(
                            255,
                            121,
                            87,
                            87,
                          ).withOpacity(0.1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

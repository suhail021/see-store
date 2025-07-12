import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:google/utils/theme/theme.dart';

class SeeStore extends StatelessWidget {
  const SeeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SeeAppTheme.lightTheme,
      darkTheme: SeeAppTheme.darkTheme,
      home:  const OnboardingScreen(),
    );
  }
}

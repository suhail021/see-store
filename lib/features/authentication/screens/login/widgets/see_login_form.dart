import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:google/features/authentication/screens/signup/signup_screen.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class SeeLoginForm extends StatelessWidget {
  const SeeLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: SeeSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: SeeTexts.email,
              ),
            ),
            SizedBox(height: SeeSizes.spaceBtwInputFields),

            //Password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: SeeTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: SeeSizes.spaceBtwInputFields / 2),

            //Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(SeeTexts.rememberMe),
                  ],
                ),

                //  Forget Password
                TextButton(
                  style: ButtonStyle(
                    // لا يوجد تأثير ضغط
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    splashFactory: NoSplash.splashFactory,
                  ),
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: Text(SeeTexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(height: SeeSizes.spaceBtwSections / 3),

            //Sign In Buttom
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(SeeTexts.signIn),
              ),
            ),
            const SizedBox(height: SeeSizes.spaceBtwItems),
            //create Account Buttom
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                // style: ButtonStyle(backgroundColor: bac),
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(SeeTexts.createAccount),
              ),
            ),
            SizedBox(height: SeeSizes.spaceBtwItems / 4),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class SeeLoginForm extends StatelessWidget {
  const SeeLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: SeeSizes().spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: SeeTexts.email,
              ),
            ),
            SizedBox(height: SeeSizes().spaceBtwInputFields),

            //Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: SeeTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: SeeSizes().spaceBtwInputFields / 2),

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
                  onPressed: () {},
                  child: Text(SeeTexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(height: SeeSizes().spaceBtwSections / 3),

            //Sign In Buttom
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(SeeTexts.signIn),
              ),
            ),
            SizedBox(height: SeeSizes().spaceBtwItems),
            //create Account Buttom
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                // style: ButtonStyle(backgroundColor: bac),
                onPressed: () {},
                child: Text(SeeTexts.createAccount),
              ),
            ),
            SizedBox(height: SeeSizes().spaceBtwItems / 4),
          ],
        ),
      ),
    );
  }
}

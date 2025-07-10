import 'package:flutter/material.dart';
import 'package:google/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:google/utils/constants/sizes.dart';
import 'package:google/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class SeeSignUpForm extends StatelessWidget {
  const SeeSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///first & last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: SeeTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
          const    SizedBox(width: SeeSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: SeeTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

         const SizedBox(height: SeeSizes.spaceBtwInputFields),

          ///username
          TextFormField(
            decoration: const InputDecoration(
              labelText: SeeTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
       const   SizedBox(height: SeeSizes.spaceBtwInputFields),

          ///Emaile
          TextFormField(
            decoration: const InputDecoration(
              labelText: SeeTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: SeeSizes.spaceBtwInputFields),

          ///phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: SeeTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
        const  SizedBox(height: SeeSizes.spaceBtwInputFields),

          ///password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: SeeTexts.password,
              prefixIcon:  Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: SeeSizes.spaceBtwInputFields),

          ///Terms & Conditions Checkbox
          const TermsConditionsCheckbox(),
          const SizedBox(height: SeeSizes.spaceBtwItems),

          ///Sign Up Buttom
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(SeeTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

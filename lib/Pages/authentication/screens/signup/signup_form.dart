import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashmir_wiper_tradors/Pages/authentication/screens/signup/terms_conditions_checkbox.dart';
import 'package:kashmir_wiper_tradors/Pages/authentication/screens/signup/verify_email.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(labelText: TTexts.firstName, prefixIcon: Icon(Icons.person)),
                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(labelText: TTexts.lastName, prefixIcon: Icon(Icons.person)),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: TTexts.username, prefixIcon: Icon(Icons.account_circle)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(
            decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Icons.email_rounded)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(
            decoration: const InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Icons.phone)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(
            obscureText: true,

            decoration: const InputDecoration(labelText: TTexts.password, prefixIcon: Icon(Icons.security), suffixIcon: Icon(Icons.remove_red_eye)),
          ),
          const SizedBox(height: TSizes.spaceBtwSections,),

          // Terms&Condition Cehckbox
          TTermsAndConditionsChheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections,),
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=>VerifyEmailScreen()), child: Text(TTexts.createAccount)),)
        ],
      )
    );
  }
}


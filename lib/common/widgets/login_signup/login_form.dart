import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashmir_wiper_tradors/Pages/HomePage.dart';
import '../../../Pages/authentication/screens/password_configuration/forget_password.dart';
import '../../../Pages/authentication/screens/signup/signup.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    labelText: TTexts.email
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.security),
                    labelText: TTexts.password,
                    suffixIcon: Icon(Icons.remove_red_eye)
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields/2,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(TTexts.rememberMe),
                    ],
                  ),

                  TextButton(onPressed: ()=>Get.to(()=>ForgetPassword()), child: const Text(TTexts.forgetPassword))
                ],
              ),

              const SizedBox(height: TSizes.spaceBtwSections,),

              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>HomePage()), child: Text(TTexts.signIn))),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: OutlinedButton(onPressed: ()=> Get.to(()=>SignupScreen()), child: Text(TTexts.createAccount))),
              // const SizedBox(height: TSizes.spaceBtwItems,),
            ],
          ),
        )
    );
  }
}
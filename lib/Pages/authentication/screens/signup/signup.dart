import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashmir_wiper_tradors/Pages/authentication/screens/signup/signup_form.dart';
import '../../../../common/widgets/login_signup/formDivider.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../login/widgets/social_butotns.dart';

class SignupScreen extends StatelessWidget{
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              
              //Form
              TSignupForm(),

              const SizedBox(height: TSizes.spaceBtwSections,),
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }

}


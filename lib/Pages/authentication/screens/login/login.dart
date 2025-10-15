import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashmir_wiper_tradors/Pages/authentication/screens/login/widgets/login_header.dart';
import 'package:kashmir_wiper_tradors/Pages/authentication/screens/login/widgets/social_butotns.dart';
import '../../../../common/Styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/formDivider.dart';
import '../../../../common/widgets/login_signup/login_form.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [

              TLoginHeader(),

              TLoginForm(),

              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),

              const SizedBox(height: TSizes.spaceBtwItems,),

              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}









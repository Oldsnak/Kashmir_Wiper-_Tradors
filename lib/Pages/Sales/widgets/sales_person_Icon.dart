import 'package:flutter/material.dart';
import 'package:kashmir_wiper_tradors/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
class SalesPersonIcon extends StatelessWidget {
  const SalesPersonIcon({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  final String image, title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.spaceBtwItems / 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: dark ? TColors.black : TColors.white,
                border: Border.all(color: TColors.accent, width: 2),
                borderRadius: BorderRadius.circular(TSizes.sm),
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.contain),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                textAlign: TextAlign.center, // ✅ centers text horizontally
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: TColors.black,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


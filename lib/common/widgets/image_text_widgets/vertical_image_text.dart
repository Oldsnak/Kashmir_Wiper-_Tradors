import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor=TColors.white,
    this.backgroundColor,
    this.onTap,
    this.imgTheme=true
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final bool imgTheme;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = backgroundColor!=TColors.white;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // Circular Icon
              width: 56,
              height: 56,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? TColors.black: TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: imgTheme ? dark ? TColors.light: TColors.dark : null,),
              ),
            ),

            //Text
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            )
          ],
        ),
      ),
    );
  }
}
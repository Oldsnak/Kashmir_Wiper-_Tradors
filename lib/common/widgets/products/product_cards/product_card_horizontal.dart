import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_verified_icon.dart';
import 'card/rounded_container.dart';

class TProductCardhohrizontal extends StatelessWidget {
  const TProductCardhohrizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: isDark ? Color(0xFF3C3C3C):TColors.lightContainer
      ),
      child: Row(
        children: [
          // Thumbnail
          TRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: isDark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                SizedBox(height: 120, width: 120,child: RoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true, backgroundColor: Colors.transparent,)),

                Positioned(
                  top: 0,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                  ),
                ),

                // Positioned(
                //     top: -9,
                //     right: -10,
                //     // child: TCircularIcon(
                //     //   icon: Icons.favorite,
                //     //   color: Colors.red,
                //     //   backgroundColor: Colors.transparent,
                //     // )
                // )
              ],
            ),
          ),

          // Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(title: 'Green Nike Half Sleeves Shirt', smallSize: true,),
                      SizedBox(height: TSizes.spaceBtwItems/2,),
                      BrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),

                  Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: ProductPriceText(price: "256.0",)),
                      
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRdiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          )
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg*1.2,
                          height: TSizes.iconLg*1.2,
                          child: Center(child: Icon(Icons.add, color: TColors.white,),),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

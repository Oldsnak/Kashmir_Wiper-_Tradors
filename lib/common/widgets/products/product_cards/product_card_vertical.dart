import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kashmir_wiper_tradors/Pages/item.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/sadows.dart';
import '../../texts/product_title_text.dart';
import 'card/rounded_container.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
    required this.remaining,
    required this.total_stock,
    required this.price,
    required this.name,
    required this.total_profit
  });

  final int remaining;
  final int total_stock;
  final int price;
  final String name;
  final int total_profit;

  @override
  Widget build(BuildContext context) {
    int sold=total_stock-remaining;
    double p=remaining/total_stock;
    final dark=THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => item()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? Color(0xFF3C3C3C):TColors.borderPrimary
        ),
        child: Column(
          children: [
            // Thumbnail, wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              width: double.infinity,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.buttonDisabled,
              child: CircularPercentIndicator(
                radius: 60,
                lineWidth: 15,
                backgroundColor: dark ? TColors.white : TColors.black,
                progressColor: TColors.primary,
                percent: remaining / total_stock,
                center: Text(
                  remaining.toString(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems/2,),

            // -- Details
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: name),
                  SizedBox(height: TSizes.spaceBtwItems/2,),
                  Text('Sold: $sold', style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
            ),

            Spacer(),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all( color: TColors.primary),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(TSizes.cardRdiusMd+5),
                  bottomRight: Radius.circular(TSizes.productImageRadius)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Price
                  Flexible(
                    flex: 3,
                    child: Center(child: Text("Price: $price", style: Theme.of(context).textTheme.headlineSmall,)),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                          color: TColors.primary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRdiusMd),
                              bottomRight: Radius.circular(TSizes.productImageRadius)
                          )
                      ),
                      child: SizedBox(
                        width: TSizes.iconLg*1.2,
                        height: TSizes.iconLg*1.2,
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: dark?TColors.dark:TColors.light,
                          ),
                        )
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}







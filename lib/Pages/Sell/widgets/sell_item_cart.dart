import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class SellItemCart extends StatelessWidget {
  const SellItemCart({
    super.key,
    required this.item_name,
    required this.price,
    required this.pieces,
    required this.discount,
  });

  final String item_name;
  final int price;
  final int pieces;
  final double discount;

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      decoration: BoxDecoration(
        color: dark ? TColors.white.withOpacity(0.2) : Colors.white.withOpacity(0.5),
        border: Border.all(color: dark ? TColors.accent : TColors.softGrey, width: 1),
        borderRadius: BorderRadius.circular(TSizes.sm),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: TSizes.sm/2,),
          Container(
              color: dark ? TColors.darkOptional.withOpacity(0.5) : TColors.white.withOpacity(0.6),
              // Color(0xff036607).withOpacity(0.5)
              width: double.infinity,
              child: Center(
                child: Text(
                    "$item_name",
                    style: Theme.of(context).textTheme.bodyLarge
                ),
              )
          ),
          SizedBox(height: TSizes.sm/2,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price:",style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: TColors.black),),
                Text("$price",style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: TColors.black),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pcs.",style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: TColors.black),),
                Text("$pieces",style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: TColors.black),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Disc:.",style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: TColors.black),),
                Text("$discount",style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: TColors.black),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_shapes/containers/glossy_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class StockDetail extends StatelessWidget {
  const StockDetail({
    super.key,
    required this.item_count,
    required this.price,
    required this.Date
  });

  final int item_count;
  final int price;
  final String Date;

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    return GlossyContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$Date",
            style: Theme.of(context).textTheme.headlineMedium
                ?.copyWith(
                fontWeight: FontWeight.bold,
                color: TColors.primary
            ),
          ),
          SizedBox(height: TSizes.sm),

          Divider(color: dark ? TColors.darkGrey : TColors.primary, thickness: 1),

          SizedBox(height: TSizes.sm),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: TSizes.lg),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Item Count: ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: dark ? Colors.grey : TColors.dark)),
                    Text("$item_count",textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.headlineSmall!.apply(color: dark ? Colors.grey : TColors.dark),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Price: ",style: Theme.of(context).textTheme.headlineSmall!.apply(color: dark ? Colors.grey : TColors.dark)),
                    Text("$price",textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.headlineSmall!.apply(color: dark ? Colors.grey : TColors.dark),),
                  ],
                ),
              ]
            ),
          )
        ],
      ),
    );
  }
}

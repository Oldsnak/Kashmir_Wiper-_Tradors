import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class NewStockDetailsDisplayer extends StatelessWidget {
  const NewStockDetailsDisplayer({
    super.key, required this.item_count, required this.price,
  });

  final int item_count;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 0),
      child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Item Count: ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: TColors.black)),
                Text("$item_count",textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.black),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price: ",style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.black)),
                Text("$price",textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.black),),
              ],
            ),
          ]
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:kashmir_wiper_tradors/Pages/Stock/widgets/stock_detail.dart';
import 'package:kashmir_wiper_tradors/utils/constants/colors.dart';
import 'package:kashmir_wiper_tradors/utils/constants/sizes.dart';
import 'package:kashmir_wiper_tradors/utils/helpers/helper_functions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../add_new_stock.dart';

class item extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    // TODO: implement build
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: TSizes.appBarHeight,),
              CircularPercentIndicator(
                radius: 70,
                lineWidth: 15,
                backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
                progressColor: TColors.primary,
                percent: 0.76,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "10000",
                        style: TextStyle(
                          color: TColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                      ),
                      Text(
                        "Price: 330",
                        style: TextStyle(
                            color: TColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),
                      ),
                    ],
                  ),
                circularStrokeCap: CircularStrokeCap.round,
              ),
              SizedBox(height: TSizes.spaceBtwItems,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Item Name", style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.primary),),
                  Text("Profit: 10000", style: Theme.of(context).textTheme.bodyMedium!.apply(fontWeightDelta: 5, color: TColors.primary),),
                ],
              ),

              SizedBox(height: TSizes.spaceBtwSections,),

              StockDetail(item_count: 6000, price: 224, Date: '25-July, 2025',),
              SizedBox(height: TSizes.spaceBtwItems,),

              StockDetail(item_count: 5000, price: 223, Date: '24-Jun, 2025',),
              SizedBox(height: TSizes.spaceBtwItems,),

              StockDetail(item_count: 2300, price: 220, Date: '01-May, 2025',),
              SizedBox(height: TSizes.spaceBtwItems,),

              StockDetail(item_count: 19000, price: 220, Date: '17-Mar, 2025',),
              SizedBox(height: TSizes.spaceBtwItems,),

              StockDetail(item_count: 2000, price: 219, Date: '04-Feb, 2025',),
              SizedBox(height: TSizes.appBarHeight*2,)
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: dark ? TColors.darkOptional : TColors.primary,
        foregroundColor: dark ? TColors.primary : Colors.white,
        tooltip: "Add new Stock",
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => add_new_stock()));
        },
        child: Icon(Icons.add,size: 35,)
      ),
    );
  }
  
}







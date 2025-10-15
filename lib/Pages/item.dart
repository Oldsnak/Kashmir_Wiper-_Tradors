import 'package:flutter/material.dart';
import 'package:kashmir_wiper_tradors/utils/constants/colors.dart';
import 'package:kashmir_wiper_tradors/utils/constants/sizes.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../common/widgets/texts/newStockDetails.dart';
import '../common/widgets/texts/stockDate.dart';
import 'add_new_stock.dart';

class item extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.grey.shade900,
      //   iconTheme: IconThemeData(color: Colors.white),
      //   title: Text(
      //     'Item',
      //     style: TextStyle(
      //       fontFamily: 'Inknut Antiqua',
      //       fontSize: 24,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 1, 5, 0),
        child: ListView(
          children: [
            SizedBox(height: TSizes.spaceBtwSections,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height: 10,),
                CircularPercentIndicator(
                  radius: 70,
                  lineWidth: 15,
                  backgroundColor: Colors.grey.shade700,
                  progressColor: Colors.green,
                  percent: 0.76,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "10000",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),
                        ),
                        Text(
                          "Price: 330",
                          style: TextStyle(
                              color: Colors.black,
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
                    Text("Item Name", style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.black),),
                    Text("Profit: 10000", style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.black, fontWeightDelta: 5),),
                  ],
                ),



                StockDate(date: '25-July, 2025',),
                NewStockDetailsDisplayer(item_count: 230000, price: 220,),

                StockDate(date: '25-July, 2025',),
                NewStockDetailsDisplayer(item_count: 230000, price: 220,),

                StockDate(date: '25-July, 2025',),
                NewStockDetailsDisplayer(item_count: 230000, price: 220,),

                StockDate(date: '25-July, 2025',),
                NewStockDetailsDisplayer(item_count: 230000, price: 220,),

                StockDate(date: '25-July, 2025',),
                NewStockDetailsDisplayer(item_count: 230000, price: 220,),

                StockDate(date: '25-July, 2025',),
                NewStockDetailsDisplayer(item_count: 230000, price: 220,),

                StockDate(date: '25-July, 2025',),
                NewStockDetailsDisplayer(item_count: 230000, price: 220,),




                SizedBox(height: 65,)
              ],
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
        tooltip: "Add new Stock",
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => add_new_stock()));
        },
        child: Icon(Icons.add,size: 35,)
      ),
    );
  }
  
}





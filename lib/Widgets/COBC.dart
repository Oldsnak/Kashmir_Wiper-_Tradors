import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kashmir_wiper_tradors/utils/constants/colors.dart';
import 'package:kashmir_wiper_tradors/utils/constants/sizes.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../common/Styles/textStyles.dart';

class COBC{

  static item_card({double height=100, double width=300, required int remaining, required int total_stock, required int price, required String name, required int total_profit}){
    int sold=total_stock-remaining;
    double p=remaining/total_stock;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            child: CircularPercentIndicator(
              radius: 40,
              lineWidth: 10,
              backgroundColor: Colors.white,
              progressColor: Colors.green,
              percent: remaining / total_stock,
              center: Text(
                remaining.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
            ),
          ),
          VerticalDivider(color: Colors.white, thickness: 2, width: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Price: $price",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Sold: $sold",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(height: 5),
              Text(
                "Profit: $total_profit",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ],
          )
        ],
      ),);
  }
  static displayCategory({required String text}){
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade900),
      ),
      child: Padding(padding: EdgeInsets.fromLTRB(20,10,20,10),
        child: textStyles.CustomText(text: text,height: 32, fontWeight: FontWeight.w500),
      ),
    );
  }

  static cartItemDisplay(){
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: TColors.darkGrey,
        border: Border.all(color: Colors.grey.shade700, width: 1),
        borderRadius: BorderRadius.circular(TSizes.sm),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: TColors.darkerGrey,
            width: double.infinity,
            child: Center(
              child: Text(
                "PPR Green",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price:",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                Text("100",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pcs.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                Text("5",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Disc:.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                Text("2",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

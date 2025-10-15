import 'package:flutter/material.dart';
import 'package:kashmir_wiper_tradors/Pages/Sales/widgets/customer_info_card.dart';
import 'package:kashmir_wiper_tradors/utils/constants/sizes.dart';

class sales_bill extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.appBarHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: TSizes.defaultSpace,),
              Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/paid.png'),
              ),
              SizedBox(height: TSizes.spaceBtwItems,),
              CustomerInfoCard(name: "Mudassar Naeem", phone: "+92 300 1234567"),

              SizedBox(height: TSizes.spaceBtwItems,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  // border: TableBorder.all(color: Colors.grey.shade900),
                  columnSpacing: 12,
                  columns: [
                    DataColumn(label: Text('Items',style: TextStyle(fontWeight: FontWeight.bold),)),
                    DataColumn(label: SizedBox(width: 40, child: Text('Price', overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),))),
                    DataColumn(label: SizedBox(width: 40, child: Text('Disc.', overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),))),
                    DataColumn(label: SizedBox(width: 40, child: Text('Pcs.', overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),))),
                    DataColumn(label: SizedBox(width: 50, child: Text('Total', overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),))),
                  ],
                  rows: billData.map((data) {
                    return DataRow(
                      cells: [
                        DataCell(Text(data['item'].toString())),
                        DataCell(Center(child: Text(data['price'].toString()))),
                        DataCell(Center(child: Text(data['discount'].toString()))),
                        DataCell(Center(child: Text(data['pieces'].toString()))),
                        DataCell(Center(child: Text(data['total'].toString()))),
                      ],
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> billData = [
    {"item": "PPR Green", "price": 100, "discount": 5, "pieces": 2, "total": 190},
    {"item": "Fancy More", "price": 50, "discount": 2, "pieces": 3, "total": 144},
    {"item": "jala Bursh 360", "price": 80, "discount": 0, "pieces": 5, "total": 400},
    {"item": "PPR Green", "price": 100, "discount": 5, "pieces": 2, "total": 190},
    {"item": "Fancy More", "price": 50, "discount": 2, "pieces": 3, "total": 144},
    {"item": "jala Bursh 360", "price": 80, "discount": 0, "pieces": 5, "total": 400},
    {"item": "PPR Green", "price": 100, "discount": 5, "pieces": 2, "total": 190},
    {"item": "Fancy More", "price": 50, "discount": 2, "pieces": 3, "total": 144},
    {"item": "jala Bursh 360", "price": 80, "discount": 0, "pieces": 5, "total": 400},
    {"item": "PPR Green", "price": 100, "discount": 5, "pieces": 2, "total": 190},
    {"item": "Fancy More", "price": 50, "discount": 2, "pieces": 3, "total": 144},
    {"item": "jala Bursh 360", "price": 80, "discount": 0, "pieces": 5, "total": 400},
    {"item": "PPR Green", "price": 100, "discount": 5, "pieces": 2, "total": 190},
    {"item": "Fancy More", "price": 50, "discount": 2, "pieces": 3, "total": 144},
    {"item": "jala Bursh 360", "price": 80, "discount": 0, "pieces": 5, "total": 400},
    {"item": "PPR Green", "price": 100, "discount": 5, "pieces": 2, "total": 190},
    {"item": "Fancy More", "price": 50, "discount": 2, "pieces": 3, "total": 144},
    {"item": "jala Bursh 360", "price": 80, "discount": 0, "pieces": 5, "total": 400},
    // Add more dynamic data here...
  ];

}
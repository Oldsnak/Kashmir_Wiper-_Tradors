import 'package:flutter/material.dart';

class customer_details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Customer Name',
          style: TextStyle(
            fontFamily: 'Inknut Antiqua',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 1, 5, 0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                // CircularPercentIndicator(
                //   radius: 70,
                //   lineWidth: 15,
                //   backgroundColor: Colors.grey.shade700,
                //   progressColor: Colors.green,
                //   percent: 0.76,
                //   center: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Text(
                //         "10000",
                //         style: TextStyle(
                //             color: Colors.black,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 30
                //         ),
                //       ),
                //       Text(
                //         "Price: 330",
                //         style: TextStyle(
                //             color: Colors.black,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 14
                //         ),
                //       ),
                //     ],
                //   ),
                //   circularStrokeCap: CircularStrokeCap.round,
                // ),
                // Text("Profit: 10000", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),

                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("25-July, 2025", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24,),)),
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("25-July, 2025", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24,),)),
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("25-July, 2025", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24,),)),
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("25-July, 2025", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24,),)),
                  ),
                ),
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
                SizedBox(height: 10,)
              ],
            ),
          ]
        ),
      ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add,size: 35,),
            backgroundColor: Colors.grey.shade900,
            foregroundColor: Colors.white,
            tooltip: "Add new Stock",
            onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => add_new_stock()));
            }
        ),
    );
  }

  final List<Map<String, dynamic>> billData = [
    {"item": "Sugar", "price": 100, "discount": 5, "pieces": 2, "total": 190},
    {"item": "Salt", "price": 50, "discount": 2, "pieces": 3, "total": 144},
    {"item": "Wheat Flour", "price": 80, "discount": 0, "pieces": 5, "total": 400},
    // Add more dynamic data here...
  ];

}
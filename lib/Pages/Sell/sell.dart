import 'package:flutter/material.dart';
import 'package:kashmir_wiper_tradors/Pages/Sell/widgets/sell_item_cart.dart';
import 'package:kashmir_wiper_tradors/utils/constants/colors.dart';
import 'package:kashmir_wiper_tradors/utils/constants/sizes.dart';
import 'package:kashmir_wiper_tradors/utils/helpers/helper_functions.dart';

import '../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../common/widgets/custom_shapes/containers/searc_container.dart';
import '../../common/widgets/texts/section_heading.dart';
import '../../utils/constants/image_strings.dart';
import '../Sales/widgets/sales_person_Icon.dart';
// import 'package:toggle_switch/toggle_switch.dart';


class sell extends StatefulWidget {
  @override
  State<sell> createState() => _statefulState();
}

class _statefulState extends State<sell> {
  static bool paid=true;
  Color c=Colors.grey.shade900;
  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    // TODO: implement build
    return Scaffold(

      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                TPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      // -- Appbar --
                      // CustomAppbar(),
                      SizedBox(height: TSizes.appBarHeight,),
                      Center(
                        child: Text("Bill # B245", style: Theme.of(context).textTheme.headlineLarge!.apply(color: TColors.black)),
                      ),
                      SizedBox(height: TSizes.spaceBtwSections,),

                      // -- Searchbar --
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.accent.withOpacity(0.3),
                          border: Border.all(color: TColors.accent),
                          borderRadius: BorderRadius.circular(TSizes.sm)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: TSizes.xl),
                        padding: EdgeInsets.only(right: TSizes.lg),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: TColors.accent,
                                border: Border.all(color: TColors.accent),
                                borderRadius: BorderRadius.circular(TSizes.sm)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: TSizes.md),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: TColors.black,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "25 July, 2025",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: TColors.black
                                      // color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: TSizes.lg), // spacing between date and textfield

                            Expanded( // ✅ makes TextField take remaining space
                              child: TextField(
                                controller: TextEditingController(),
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  hintText: 'Customer Name',
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade900,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.grey.shade900,
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: TColors.accent, width: 2),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: TColors.accent, width: 2),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black, width: 2),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade900,
                                ),
                                cursorColor: Colors.black,
                                cursorWidth: 2,
                              ),
                            ),
                          ],
                        ),
                      ),


                      SizedBox(height: TSizes.spaceBtwSections,),

                      // -- Categories --
                      Padding(
                        padding: EdgeInsets.only(left: TSizes.defaultSpace),
                        child: Column(
                          children: [
                            // -- Heading
                            SectionHeading(title: 'Listed Item', showActionButton: false, textColor: Colors.black,),
                            SizedBox(height: TSizes.spaceBtwItems,),

                            // Categories
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: dark ? TColors.black : TColors.white,
                                      border: Border.all(color: dark ? TColors.accent : TColors.accent, width: 2),
                                      borderRadius: BorderRadius.circular(TSizes.sm),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add, color: dark ? Colors.white : TColors.primary,size: 50,),
                                        Container(
                                          width: double.infinity,
                                          color: dark ? TColors.darkerGrey : TColors.textSecondary.withOpacity(0.7),
                                          child: Center(
                                            child: Text(
                                              "Add Item",
                                              style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.white)
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: TSizes.spaceBtwItems,),
                                  SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0.5,),
                                  SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),
                                  SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),
                                  SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),
                                  SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),
                                  SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwSections,)
                    ],
                  )
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                  child: Column(
                    children: [
                      // SizedBox(height: 20,),

                      // SizedBox(
                      //   height: 100,
                      //   child: ListView(
                      //     scrollDirection: Axis.horizontal,
                      //     children: [
                      //
                      //       Container(
                      //         width: 100,
                      //         decoration: BoxDecoration(
                      //           color: dark ? TColors.darkerGrey : TColors.primary,
                      //           border: Border.all(color: Colors.grey.shade700, width: 1),
                      //           borderRadius: BorderRadius.circular(TSizes.sm),
                      //         ),
                      //         child: Column(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           crossAxisAlignment: CrossAxisAlignment.center,
                      //           children: [
                      //             Icon(Icons.add, color: Colors.white,size: 50,),
                      //             Container(
                      //               width: double.infinity,
                      //               color: dark ? TColors.darkGrey : TColors.textSecondary,
                      //               child: Center(
                      //                 child: Text(
                      //                   "Add Item",
                      //                   style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.white)
                      //                 ),
                      //               )
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //
                      //     ],
                      //   ),
                      // ),




                      // SizedBox(height: 20,),
                      //
                      // Container(
                      //   child: Center(
                      //     child: ToggleSwitch(
                      //       customWidths: [90.0, 50.0],
                      //       cornerRadius: 20.0,
                      //       activeBgColors: [[Colors.green], [Colors.redAccent]],
                      //       activeFgColor: Colors.white,
                      //       inactiveBgColor: Colors.grey,
                      //       inactiveFgColor: Colors.white,
                      //       totalSwitches: 2,
                      //       labels: ['Paid', ''],
                      //       icons: [null, Icons.output_rounded],
                      //       onToggle: (index) {
                      //         print('switched to: $index');
                      //       },
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(height: 20,),

                      GestureDetector(
                        onTap: () {
                          // print("$paid");
                          if(paid==true){
                            paid=false;
                            c=Colors.redAccent;
                          }
                          else{
                            paid=true;
                            c= dark ? Colors.grey.shade900 : TColors.borderSecondary;
                          }
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: c,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text("Total: 123000", style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700))),
                          ),
                        ),
                      ),

                      Center(
                        child: SingleChildScrollView(
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
                      ),
                      SizedBox(height: TSizes.spaceBtwSections,),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24, // left-right inside space
                            vertical: 16,   // top-bottom inside space
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(TSizes.sm),
                          ),
                        ),
                        child: const Text(
                          "Proceed Bill",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: TSizes.xl*3,)

                    ],
                  )
                ),
              ],
            ),
          ),
          // Floating Action Button Positioned a little above the bottom
          Positioned(
            bottom: 90, // adjust this value to lift it up/down
            right: 16,
            child: FloatingActionButton(
              backgroundColor: dark ? TColors.darkPrimaryContainer : TColors.buttonPrimary,
              foregroundColor: dark ? TColors.primary: Colors.white,
              tooltip: "Scan product",
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => sales_bill()));
              },
              child: Icon(Icons.qr_code_2, size: 35),
            ),
          ),
        ],
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




/*
              SizedBox(height: 20,),
                Center(
                  child: Text("Bill # B245", style: Theme.of(context).textTheme.headlineLarge),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 100, // or any height you prefer
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.grey.shade900,
                      color: dark ? TColors.darkerGrey : TColors.primary,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.grey.shade700),
                    ),
                    child: Row(
                      children: [
                        // Date Section
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Date",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "25 July, 2025",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),


                        // TextField Section
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: double.infinity, // This makes it fill vertically
                            decoration: BoxDecoration(
                              color: dark ? TColors.darkGrey : TColors.white,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: TextField(
                              controller: TextEditingController(),
                              textCapitalization: TextCapitalization.words,
                              decoration: InputDecoration(
                                hintText: 'Customer Name',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade900,
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.grey.shade900,
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 2),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black, width: 2),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 12), // for vertical alignment
                              ),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900,
                              ),
                              cursorColor: Colors.black,
                              cursorWidth: 2,
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [

                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: dark ? TColors.darkerGrey : TColors.primary,
                          border: Border.all(color: Colors.grey.shade700, width: 1),
                          borderRadius: BorderRadius.circular(TSizes.sm),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: Colors.white,size: 50,),
                            Container(
                              width: double.infinity,
                              color: dark ? TColors.darkGrey : TColors.textSecondary,
                              child: Center(
                                child: Text(
                                  "Add Item",
                                  style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.white)
                                ),
                              )
                            )
                          ],
                        ),
                      ),

                      SizedBox(width: 20,),

                      SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0.5,),
                      SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),
                      SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),
                      SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),
                      SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),
                      SellItemCart(item_name: 'PPR Green', price: 330, pieces: 6, discount: 0,),

                    ],
                  ),
                ),
                // SizedBox(height: 20,),
                //
                // Container(
                //   child: Center(
                //     child: ToggleSwitch(
                //       customWidths: [90.0, 50.0],
                //       cornerRadius: 20.0,
                //       activeBgColors: [[Colors.green], [Colors.redAccent]],
                //       activeFgColor: Colors.white,
                //       inactiveBgColor: Colors.grey,
                //       inactiveFgColor: Colors.white,
                //       totalSwitches: 2,
                //       labels: ['Paid', ''],
                //       icons: [null, Icons.output_rounded],
                //       onToggle: (index) {
                //         print('switched to: $index');
                //       },
                //     ),
                //   ),
                // ),
                // SizedBox(height: 20,),

                GestureDetector(
                  onTap: () {
                    // print("$paid");
                    if(paid==true){
                      paid=false;
                      c=Colors.redAccent;
                    }
                    else{
                      paid=true;
                      c= dark ? Colors.grey.shade900 : TColors.borderSecondary;
                    }
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: c,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Total: 123000", style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700))),
                    ),
                  ),
                ),

                Center(
                  child: SingleChildScrollView(
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
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 30, 60, 60),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Proceed Bill"),
                  ),
                ),
                // SizedBox(height: TSizes.xl*3,)
 */

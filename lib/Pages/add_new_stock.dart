import 'package:flutter/material.dart';
import 'package:kashmir_wiper_tradors/utils/constants/colors.dart';
import 'package:kashmir_wiper_tradors/utils/constants/sizes.dart';

class add_new_stock extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Add New Stock',
          style: TextStyle(
            fontFamily: 'Inknut Antiqua',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(60, 20, 60, 0),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("About Now", style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),)),
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Item Count: ",style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.black)),
                        Text("230400",textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.black),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Price: ",style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.black)),
                        Text("220",textDirection: TextDirection.rtl, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.black),),
                      ],
                    ),
                  ]
                ),

                SizedBox(height: TSizes.spaceBtwSections,),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Add New Stock", style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),)),
                ),
                SizedBox(height: TSizes.spaceBtwItems,),
                TextField(
                  controller: TextEditingController(),
                  keyboardType: TextInputType.number,
                  // textInputAction: TextInputAction.done,
                  // obscureText: false,
                  // autocorrect: true,
                  // enableSuggestions: true,
                  maxLength: 30,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade900,
                          width: 2
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.grey.shade500,
                          width: 2
                      )
                    ),
                    labelText: 'items count',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                    hintText: 'Number of items',
                    hintStyle: TextStyle(color: TColors.black),
                    prefixIcon: Icon(Icons.add_shopping_cart_rounded),
                  ),
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade900,fontWeight: FontWeight.bold),
                  cursorColor: Colors.grey,
                  cursorWidth: 2,
                ),

                TextField(
                  controller: TextEditingController(),
                  keyboardType: TextInputType.number,
                  maxLength: 30,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade900,
                            width: 2
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade500,
                            width: 2
                        )
                    ),
                    labelText: 'Price',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                    hintText: 'Please Enter Price',
                    prefixIcon: Icon(Icons.monetization_on),
                  ),
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade900,fontWeight: FontWeight.bold),
                  cursorColor: Colors.grey,
                  cursorWidth: 2,
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: (){},
                  child: Text("Add to Store"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade900, // Background color
                    foregroundColor: Colors.white,    // Text color
                    shadowColor: Colors.black,  // Shadow color
                    elevation: 8,               // Elevation depth
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}
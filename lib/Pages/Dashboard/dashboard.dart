import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashmir_wiper_tradors/Pages/Dashboard/widgets/dashboard_categories.dart';
import 'package:kashmir_wiper_tradors/common/widgets/custom_appbar/appbar.dart';
import 'package:kashmir_wiper_tradors/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:kashmir_wiper_tradors/common/widgets/custom_shapes/category_display/Category.dart';

import '../../Widgets/COBC.dart';
import '../../Widgets/drawer.dart';
import '../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../common/widgets/custom_shapes/containers/searc_container.dart';
import '../../common/widgets/layouts/grid_layout.dart';
import '../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../common/widgets/texts/section_heading.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../item.dart';


class dashboard extends StatelessWidget {
  // List<String> filteredItems = allItems
  //     .where((item) => item.toLowerCase().contains(searchText.toLowerCase()))
  //     .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- Appbar --
                  CustomAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  // -- Searchbar --
                  TSearchContainer(text: 'Search in Store',),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  // -- Categories --
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // -- Heading
                        SectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.black,),
                        SizedBox(height: TSizes.spaceBtwItems,),

                        // Categories
                        DashboardCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,)
                ],
              )
            ),

            // Body

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  SizedBox(height: TSizes.spaceBtwSections/2,),
                  CategoryName(name: "Jala Bursh"),
                  SizedBox(height: TSizes.spaceBtwItems,),

                  // Popular Products
                  GridLayout(itemCount: 6, itemBuilder: (_, index)=>ProductCardVertical(remaining: 234500, total_stock: 300000, price: 330, name: 'Jala Bursh', total_profit: 26500,)),
                ],
              ),
            ),

            SizedBox(height: TSizes.lg*3,),
          ],
        ),
      ),
    );
  }
}

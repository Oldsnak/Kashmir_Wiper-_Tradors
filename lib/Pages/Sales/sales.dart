import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashmir_wiper_tradors/Pages/Sales/widgets/sales_person_Icon.dart';
import 'package:kashmir_wiper_tradors/Pages/Sales/sales_bill.dart';
import 'package:kashmir_wiper_tradors/utils/helpers/helper_functions.dart';

import '../../Widgets/drawer.dart';
import '../../common/widgets/custom_appbar/custom_appbar.dart';
import '../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../common/widgets/custom_shapes/containers/searc_container.dart';
import '../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../common/widgets/texts/section_heading.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../Dashboard/widgets/dashboard_categories.dart';
import '../customer_details.dart';
import '../item.dart';
import '../new_customer.dart';

class sales extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
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
                            SectionHeading(title: 'Sales Person', showActionButton: false, textColor: Colors.black,),
                            SizedBox(height: TSizes.spaceBtwItems,),

                            // Categories
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SalesPersonIcon(image: TImages.user3, title: 'Mudassar'),
                                  SalesPersonIcon(image: TImages.user2, title: 'Talha'),
                                  SalesPersonIcon(image: TImages.user4, title: 'Asghar'),
                                  SalesPersonIcon(image: TImages.user, title: 'Tayyab'),
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
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                  child: Column(
                    children: List.generate(20, (index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: dark ? TColors.darkerGrey : TColors.accent, width: 2),
                          borderRadius: BorderRadius.circular(TSizes.lg),
                          color: TColors.accent.withOpacity(0.3),
                        ),
                        margin: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              color: dark ? TColors.black : TColors.white,
                              borderRadius: BorderRadius.circular(TSizes.sm),
                              border: Border.all(color: TColors.primary)
                            ),
                            child: Center(
                              child: Text(
                                "B245",
                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: TColors.primary)
                              ),
                            ),
                          ),
                          title: Text(
                            'Customer Name ${index + 1}',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('Total Bill: 203000', style: Theme.of(context).textTheme.labelLarge),
                          trailing: Icon(Icons.arrow_forward_ios, color: TColors.primary,),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => sales_bill()));
                          },
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 80,)
              ],
            ),
          ),

        ],
      ),
    );
  }

}
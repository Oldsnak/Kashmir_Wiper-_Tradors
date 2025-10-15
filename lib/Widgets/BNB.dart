// import 'package:flutter/material.dart';
// import 'package:kashmir_wiper_tradors/Pages/sales_bill.dart';
// import 'package:kashmir_wiper_tradors/utils/helpers/helper_functions.dart';
//
// import '../Widgets/drawer.dart';
// import '../utils/constants/colors.dart';
// import 'customer_details.dart';
// import 'new_customer.dart';
//
// class sales extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     final bool dark = THelperFunctions.isDarkMode(context);
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.grey.shade900,
//       //   iconTheme: IconThemeData(color: Colors.white),
//       //   title: Text(
//       //     'Sales',
//       //     style: TextStyle(
//       //       fontFamily: 'Inknut Antiqua',
//       //       fontSize: 24,
//       //       fontWeight: FontWeight.bold,
//       //       color: Colors.white,
//       //     ),
//       //   ),
//       // ),
//       body: Stack(
//         children: [
//           Padding(
//             padding: EdgeInsets.fromLTRB(5, 1, 5, 5),
//             child: ListView(
//               children: List.generate(20, (index) {
//                 return Column(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey.shade900, width: 2),
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.shade600.withOpacity(0.4),
//                             blurRadius: 6,
//                             spreadRadius: 2,
//                             offset: Offset(2, 4),
//                           ),
//                         ],
//                       ),
//                       margin: EdgeInsets.symmetric(vertical: 5),
//                       child: ListTile(
//                         leading: Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Colors.grey.shade900,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "${index + 1}",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         title: Text(
//                           'Customer Name ${index + 1}',
//                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                         ),
//                         subtitle: Text('Total Bill: 203000'),
//                         trailing: Icon(Icons.arrow_forward_ios),
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => sales_bill()));
//                         },
//                       ),
//                     ),
//                   ],
//                 );
//               }),
//             ),
//           ),
//
//           // Floating Action Button Positioned a little above the bottom
//           Positioned(
//             bottom: 90, // adjust this value to lift it up/down
//             right: 16,
//             child: FloatingActionButton(
//               child: Icon(Icons.add, size: 35),
//               backgroundColor: dark ? TColors.darkerGrey : TColors.buttonPrimary,
//               foregroundColor: Colors.white,
//               tooltip: "Add new Customer Account",
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => sales_bill()));
//               },
//             ),
//           ),
//         ],
//       ),
//       drawer: Dr(),
//     );
//   }
//
// }





































// import 'package:flutter/material.dart';
// import 'package:kashmir_wiper_tradors/Pages/Sales/widgets/sales_person_Icon.dart';
// import 'package:kashmir_wiper_tradors/Pages/sales_bill.dart';
// import 'package:kashmir_wiper_tradors/utils/helpers/helper_functions.dart';
//
// import '../../Widgets/drawer.dart';
// import '../../common/widgets/custom_appbar/custom_appbar.dart';
// import '../../common/widgets/custom_shapes/containers/primary_header_container.dart';
// import '../../common/widgets/custom_shapes/containers/searc_container.dart';
// import '../../common/widgets/image_text_widgets/vertical_image_text.dart';
// import '../../common/widgets/texts/section_heading.dart';
// import '../../utils/constants/colors.dart';
// import '../../utils/constants/image_strings.dart';
// import '../../utils/constants/sizes.dart';
// import '../Dashboard/widgets/dashboard_categories.dart';
// import '../customer_details.dart';
// import '../new_customer.dart';
//
// class sales extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     final bool dark = THelperFunctions.isDarkMode(context);
//     return Scaffold(
//
//       body: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 TPrimaryHeaderContainer(
//                     child: Column(
//                       children: [
//                         // -- Appbar --
//                         CustomAppbar(),
//                         SizedBox(height: TSizes.spaceBtwSections,),
//
//                         // -- Searchbar --
//                         TSearchContainer(text: 'Search in Store',),
//                         SizedBox(height: TSizes.spaceBtwSections,),
//
//                         // -- Categories --
//                         Padding(
//                           padding: EdgeInsets.only(left: TSizes.defaultSpace),
//                           child: Column(
//                             children: [
//                               // -- Heading
//                               SectionHeading(title: 'Sales Person', showActionButton: false, textColor: Colors.black,),
//                               SizedBox(height: TSizes.spaceBtwItems,),
//
//                               // Categories
//                               SingleChildScrollView(
//                                 scrollDirection: Axis.horizontal,
//                                 child: Row(
//                                   children: [
//                                     SalesPersonIcon(image: TImages.user3, title: 'Mudassar'),
//                                     SalesPersonIcon(image: TImages.user2, title: 'Talha'),
//                                     SalesPersonIcon(image: TImages.user4, title: 'Asghar'),
//                                     SalesPersonIcon(image: TImages.user, title: 'Tayyab'),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: TSizes.spaceBtwSections,)
//                       ],
//                     )
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
//                   child: Column(
//                     children: List.generate(20, (index) {
//                       return Container(
//                         decoration: BoxDecoration(
//                           border: Border.all(color: dark ? TColors.darkerGrey : TColors.accent, width: 2),
//                           borderRadius: BorderRadius.circular(TSizes.lg),
//                           color: TColors.accent.withOpacity(0.3),
//                         ),
//                         margin: EdgeInsets.all(5),
//                         child: ListTile(
//                           leading: Container(
//                             height: 40,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 color: dark ? TColors.black : TColors.white,
//                                 borderRadius: BorderRadius.circular(TSizes.sm),
//                                 border: Border.all(color: TColors.primary)
//                             ),
//                             child: Center(
//                               child: Text(
//                                   "B245",
//                                   style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: TColors.primary)
//                               ),
//                             ),
//                           ),
//                           title: Text(
//                             'Customer Name ${index + 1}',
//                             style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: Text('Total Bill: 203000', style: Theme.of(context).textTheme.labelLarge),
//                           trailing: Icon(Icons.arrow_forward_ios, color: TColors.primary,),
//                           onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => sales_bill()));
//                           },
//                         ),
//                       );
//                     }),
//                   ),
//                 ),
//                 SizedBox(height: 80,)
//               ],
//             ),
//           ),
//
//           // Floating Action Button Positioned a little above the bottom
//           Positioned(
//             bottom: 90, // adjust this value to lift it up/down
//             right: 16,
//             child: FloatingActionButton(
//               child: Icon(Icons.add, size: 35),
//               backgroundColor: dark ? TColors.darkSecondary : TColors.buttonPrimary,
//               foregroundColor: Colors.white,
//               tooltip: "Add new Customer Account",
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => sales_bill()));
//               },
//             ),
//           ),
//         ],
//       ),
//       drawer: Dr(),
//     );
//   }
//
// }
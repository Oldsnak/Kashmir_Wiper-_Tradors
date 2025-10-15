import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kashmir_wiper_tradors/Pages/Dashboard/dashboard.dart';
import 'package:kashmir_wiper_tradors/Pages/personalization/screens/settings/settings.dart';
import 'package:kashmir_wiper_tradors/Pages/Sales/sales.dart';
import 'package:kashmir_wiper_tradors/Pages/Sell/sell.dart';
import 'package:kashmir_wiper_tradors/utils/helpers/helper_functions.dart';

import '../utils/constants/colors.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int current_page=0;
  List<Widget> screens=[
    dashboard(),
    sell(),
    sales(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: current_page,
        children:screens,
      ),



      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index){
          setState(() {
            current_page=index;
          });
        },
        backgroundColor: Colors.transparent,
        // color: Colors.grey.shade900,
        color: dark ? TColors.darkSecondary : TColors.primary,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Iconsax.shop, color: dark ? TColors.primary : TColors.white),
          Icon(Icons.shopping_cart, color: dark ? TColors.primary : TColors.white,),
          Icon(Icons.receipt, color: dark ? TColors.primary : TColors.white),
          Icon(Icons.person, color: dark ? TColors.primary : TColors.white),
        ],
      ),
    );
  }
}

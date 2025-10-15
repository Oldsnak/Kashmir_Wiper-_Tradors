import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kashmir_wiper_tradors/Pages/add_category.dart';
import '../../../../common/widgets/custom_appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../register_customer.dart';
import '../address/address.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  SAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),
                    ),
                  ),


                  // User Profile Card
                  TUserProfileTile(onPressed: () => Get.to(() => ProfileScreen()),),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),

            // Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  SectionHeading(title: "Store Tabs", showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems,),

                  TSettingsMenuTile(
                    onTap: () => Get.to(() => AddCategoryPage()),
                    icon: Iconsax.safe_home,
                    title: "Add Category",
                    subTitle: "Set New Category of Products",
                  ),

                  TSettingsMenuTile(
                    onTap: () => Get.to(() => AddCategoryPage()),
                    icon: Iconsax.shopping_cart,
                    title: "Add Item or Category",
                    subTitle: "Add New item in Store",
                  ),

                  TSettingsMenuTile(
                    onTap: () => Get.to(() => register_customer()),
                    icon: Iconsax.bag_tick,
                    title: "Add Stock",
                    subTitle: "Add Existing products to Store",
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Registered Customers",
                    subTitle: "Registered Customers and their Pending Dues",
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.user_tag,
                    title: "Workers",
                    subTitle: "Workers of Kashmir Wiper Tradors",
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Set any kind of notification message",
                  ),

                  TSettingsMenuTile(
                    onTap: () => Get.to(() => UserAddressScreen()),
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                  ),


                  // App Settings
                  SizedBox(height: TSizes.spaceBtwSections,),
                  SectionHeading(title: "App Settings", showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  TSettingsMenuTile(icon: Iconsax.document_upload, title: "Load Data", subTitle: "Upload Data to your Cloud Firebase"),

                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subTitle: "Set recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "HD Image Quality",
                    subTitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                ],
              ),
            ),
            SizedBox(height: TSizes.spaceBtwSections*2,)
          ],
        ),
      ),
    );
  }
}


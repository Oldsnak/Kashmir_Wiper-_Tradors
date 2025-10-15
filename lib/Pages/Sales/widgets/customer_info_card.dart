import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kashmir_wiper_tradors/utils/helpers/helper_functions.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CustomerInfoCard extends StatelessWidget {
  final String name;
  final String phone;

  const CustomerInfoCard({
    super.key,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode=THelperFunctions.isDarkMode(context);
    final backgroundColor = isDarkMode
        ? TColors.darkPrimaryContainer
        : TColors.lightPrimaryContainer;

    final highlightColor = isDarkMode
        ? Colors.white.withOpacity(0.08)
        : Colors.white.withOpacity(0.6);

    final shadowColor = isDarkMode
        ? Colors.black.withOpacity(0.8)
        : Colors.grey.withOpacity(0.3);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: TSizes.sm, horizontal: TSizes.xl),
      padding: const EdgeInsets.all(TSizes.md),
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.85),
        borderRadius: BorderRadius.circular(TSizes.cardRdiusLg),
        boxShadow: [
          // 3D shadow depth
          BoxShadow(
            color: shadowColor,
            offset: const Offset(4, 4),
            blurRadius: 10,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: highlightColor,
            offset: const Offset(-4, -4),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isDarkMode
              ? [
            TColors.darkPrimaryContainer.withOpacity(0.9),
            TColors.darkSecondaryContainer.withOpacity(0.6),
          ]
              : [
            Colors.white.withOpacity(0.8),
            TColors.lightPrimaryContainer.withOpacity(0.9),
          ],
        ),
        border: Border.all(
          color: isDarkMode
              ? Colors.white.withOpacity(0.08)
              : Colors.grey.withOpacity(0.2),
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Center(
            child: Text(
              "Bill No: B245",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: TColors.primary,
                letterSpacing: 1,
              ),
            ),
          ),

          SizedBox(height: TSizes.sm,),

          Divider(color: isDarkMode ? TColors.darkGrey : TColors.primary, thickness: 1),

          const SizedBox(height: TSizes.sm),
          _infoRow(
            icon: Icons.person,
            name: "Customer Name",
          ),
          const SizedBox(height: TSizes.sm),

          Divider(color: isDarkMode ? TColors.darkGrey : TColors.primary, thickness: 1),

          SizedBox(height: TSizes.sm),
          _infoRow(
            icon: Icons.phone_android_outlined,
            name: "Mobile Number",
          ),
          const SizedBox(height: TSizes.sm),

          Divider(color: isDarkMode ? TColors.darkGrey : TColors.primary, thickness: 1),

          SizedBox(height: TSizes.sm),
          _infoRow(
            icon: Icons.payments_outlined,
            name: "Total Amount",
          ),
          SizedBox(height: TSizes.sm),

          Divider(color: isDarkMode ? TColors.darkGrey : TColors.primary, thickness: 1),

          SizedBox(height: TSizes.sm),
          _infoRow(
            icon: Icons.calendar_month,
            name: "date and Time",
          ),
          SizedBox(height: TSizes.sm),

          Divider(color: isDarkMode ? TColors.darkGrey : TColors.primary, thickness: 1),

          SizedBox(height: TSizes.sm),
          _infoRow(
            // icon: Icons.business_center,
            icon: Iconsax.user_tag,
            name: "Sales Person",
          ),
          SizedBox(height: TSizes.sm),

          Divider(color: isDarkMode ? TColors.darkGrey : TColors.primary, thickness: 1),

          SizedBox(height: TSizes.sm),
          _infoRow(
            icon: Icons.hourglass_top,
            name: "Pending Dues",
          ),
          SizedBox(height: TSizes.sm),
        ],
      ),
    );
  }
}


Widget _infoRow({
  required IconData icon,
  required String name,
}) {
  return Row(
    children: [
      Icon(icon, color: TColors.primary, size: 26),
      const SizedBox(width: 16),
      Expanded(
        child: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
      ),
    ],
  );
}


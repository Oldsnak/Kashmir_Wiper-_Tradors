import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kashmir_wiper_tradors/common/widgets/custom_shapes/containers/glossy_container.dart';
import 'package:kashmir_wiper_tradors/utils/constants/colors.dart';
import 'package:kashmir_wiper_tradors/utils/constants/sizes.dart';


class AddCategoryPage extends StatefulWidget {
  @override
  State<AddCategoryPage> createState() => _AddCategoryPageState();
}

class _AddCategoryPageState extends State<AddCategoryPage> {
  // Example list of pre-registered categories
  final List<String> categories = [
    'Wipers',
    'Car Shampoo',
    'Perfumes',
    'Tyres',
    'Microfiber Cloths',
  ];

  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ===== Add New Category =====
                GlossyContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add New Category",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: TColors.primary),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),
                      TextField(
                        textCapitalization: TextCapitalization.words,
                        decoration: const InputDecoration(
                          labelText: 'Category Name',
                          hintText: 'Enter category name',
                          prefixIcon: Icon(Iconsax.category),
                        ),
                        cursorColor: TColors.primary,
                        cursorWidth: 2,
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 4,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(TSizes.buttonRadius),
                            ),
                          ),
                          child: const Text("Add Category"),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: TSizes.spaceBtwSections),

                // ===== Add New Item =====
                GlossyContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add New Item",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: TColors.primary),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),

                      // --- Dropdown Field (Select Category) ---
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(TSizes.inputFieldRadius),
                          boxShadow: [
                            BoxShadow(
                              color: isDark
                                  ? Colors.black.withOpacity(0.5)
                                  : Colors.grey.withOpacity(0.3),
                              offset: const Offset(2, 2),
                              blurRadius: 5,
                            ),
                            BoxShadow(
                              color: isDark
                                  ? Colors.white.withOpacity(0.05)
                                  : Colors.white.withOpacity(0.7),
                              offset: const Offset(-2, -2),
                              blurRadius: 5,
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: isDark
                                ? [
                              TColors.darkPrimaryContainer
                                  .withOpacity(0.9),
                              TColors.darkSecondaryContainer
                                  .withOpacity(0.7),
                            ]
                                : [
                              Colors.white.withOpacity(0.9),
                              TColors.lightPrimaryContainer
                                  .withOpacity(0.9),
                            ],
                          ),
                        ),
                        child: DropdownButtonFormField<String>(
                          value: selectedCategory,
                          items: categories
                              .map((category) => DropdownMenuItem<String>(
                            value: category,
                            child: Row(
                              children: [
                                const SizedBox(width: 10),
                                Text(
                                  category,
                                  style: TextStyle(
                                    color: isDark
                                      ? Colors.white
                                      : TColors.textPrimary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedCategory = value;
                            });
                          },
                          dropdownColor: isDark
                              ? TColors.darkSecondaryContainer
                              : Colors.white,
                          icon: const Icon(Icons.arrow_drop_down,
                              color: TColors.primary),
                          decoration: InputDecoration(
                            labelText: 'Select Category',
                            prefixIcon: const Icon(Iconsax.category,
                                color: TColors.primary),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isDark
                                  ? Colors.white70
                                  : TColors.textSecondary,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isDark
                                    ? Colors.white24
                                    : TColors.borderSecondary,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(
                                  TSizes.inputFieldRadius),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: TColors.primary, width: 2),
                              borderRadius: BorderRadius.circular(
                                  TSizes.inputFieldRadius),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                          ),
                        ),
                      ),

                      const SizedBox(height: TSizes.spaceBtwInputFields),

                      // --- Item Name ---
                      TextField(
                        textCapitalization: TextCapitalization.words,
                        decoration: const InputDecoration(
                          labelText: 'Item Name',
                          hintText: 'Enter item name',
                          prefixIcon: Icon(Iconsax.box),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),

                      // --- Item Price ---
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Price',
                          hintText: 'Item Price',
                          prefixIcon: Icon(Icons.attach_money_outlined),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),

                      // --- Item Quantity ---
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Quantity',
                          hintText: 'Number of Items',
                          prefixIcon: Icon(Icons.production_quantity_limits),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),

                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 4,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(TSizes.buttonRadius),
                            ),
                          ),
                          child: const Text("Add Item"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

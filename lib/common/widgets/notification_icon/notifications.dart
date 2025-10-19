import 'package:flutter/material.dart';
import 'package:kashmir_wiper_tradors/utils/constants/colors.dart';
import 'package:kashmir_wiper_tradors/utils/constants/sizes.dart';
import 'package:kashmir_wiper_tradors/utils/helpers/helper_functions.dart';
import '../custom_appbar/appbar.dart';
import 'package:kashmir_wiper_tradors/common/widgets/snack_bar/GlossySnackBar.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // Dummy notifications
  List<String> notifications = List.generate(10, (index) => "Notification $index");

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true,
        title: const Text("Notifications"),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          final item = notifications[index];

          return Dismissible(
            key: Key(item),
            direction: DismissDirection.horizontal,
            onDismissed: (direction) {
              setState(() {
                notifications.removeAt(index);
              });

              if (direction == DismissDirection.startToEnd) {
                GlossySnackBar.show(
                  context,
                  message: "$item marked as read ✅",
                );
              } else {
                GlossySnackBar.show(
                  context,
                  message: "$item deleted ❌",
                  isError: true,
                );
              }
            },
            background: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20),
              child: const Icon(Icons.check, color: Colors.white),
            ),
            secondaryBackground: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: TSizes.defaultSpace,
                vertical: TSizes.sm,
              ),
              decoration: BoxDecoration(
                color: dark ? const Color(0xFF3C3C3C) : TColors.borderPrimary,
                border: Border.all(
                  color: dark ? TColors.darkContainer : TColors.softGrey,
                  width: 1.2,
                ),
                borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              ),
              child: ListTile(
                leading: const Icon(Icons.notifications, color: TColors.primary),
                title: Text(
                  item,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("This is detail for $item"),
              ),
            ),
          );

        },
      ),
    );
  }
}

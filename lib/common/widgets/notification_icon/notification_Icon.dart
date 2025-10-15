import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/colors.dart';
import 'notifications.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => NotificationScreen()), icon: Icon(Icons.notifications, color: TColors.black,)),
        Positioned(
          right:8,
          top: 5,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.darkerGrey,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';
import '../notification_icon/notification_Icon.dart';
import 'appbar.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key,});

  @override
  Widget build(BuildContext context) {
    return SAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.black),),
          Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.black),),
        ],
      ),
      actions: [NotificationIcon()],
    );
  }
}
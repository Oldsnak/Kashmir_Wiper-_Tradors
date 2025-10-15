import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:kashmir_wiper_tradors/Pages/personalization/screens/profile/widgets/profile_menu.dart';
import '../../../../common/widgets/custom_appbar/appbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text("Profile"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(image: TImages.user, width: 80, height: 80, applyOverlayColor: false,),
                    TextButton(onPressed: (){}, child: Text('Change Profile Picture')),
                  ],
                ),
              ),

              SizedBox(height: TSizes.spaceBtwItems/2,),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),
              SectionHeading(title: "Profile information", showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(onPressed: () {}, title: 'Name', value: 'Mudassar Naeem',),
              TProfileMenu(onPressed: () {}, title: 'Username', value: '@bazurg_butt',),

              SizedBox(height: TSizes.spaceBtwItems,),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),

              SectionHeading(title: "Personal Information", showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(onPressed: (){}, title: 'User ID', value: '141628', icon: Iconsax.copy,),
              TProfileMenu(onPressed: (){}, title: 'E-mail', value: 'bazurgIndustries@gmail.com'),
              TProfileMenu(onPressed: (){}, title: 'Phone Number', value: '0313-7577750'),
              TProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              TProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '15 July, 2003'),
              
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),
              
              Center(
                child: TextButton(onPressed: (){}, child: Text('Close Account', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.red),)),
              )

            ],
          ),
        ),
      ),
    );
  }
}



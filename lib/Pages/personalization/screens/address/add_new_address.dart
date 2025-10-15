import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text('Add new Address'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.account_circle), labelText: 'Name'),),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.call), labelText: 'Phone Number'),),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.home), labelText: 'Street'),),),
                    SizedBox(width: TSizes.spaceBtwInputFields,),
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.local_post_office), labelText: 'Postal Code'),),),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.location_city), labelText: 'City'),),),
                    SizedBox(width: TSizes.spaceBtwInputFields,),
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.local_activity), labelText: 'State'),),),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.public), labelText: 'Country'),),
                SizedBox(height: TSizes.defaultSpace,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: Text('Save')),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}

import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyAddNewAddress extends StatelessWidget {
  const MyAddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppAppBar(title: Text('Add New Address'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpacing),
          child: Form(child: Column(
            children: [
              TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),),
              SizedBox(height: MyAppSizes.spaceBtwInputFields,),
              TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile2), labelText: 'Phone Number'),),
              SizedBox(height: MyAppSizes.spaceBtwInputFields,),
              Row(
                children: [
                  Expanded(child: TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'),)),
                  SizedBox(width: MyAppSizes.spaceBtwInputFields,),
                  Expanded(child: TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Pin Code'),),),
                ],
              ),
               SizedBox(height: MyAppSizes.spaceBtwInputFields,),

              Row(
                children: [
                  Expanded(child: TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'City'),)),
                  SizedBox(width: MyAppSizes.spaceBtwInputFields,),
                  Expanded(child: TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity3), labelText: ' State'),),),
                ],
              ),
              SizedBox(height: MyAppSizes.spaceBtwInputFields,),
              TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),

              SizedBox(height: MyAppSizes.spaceBtwInputFields,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text('Save')),
              )
            ],
          ),),
        ),
      ),
    );
  }
}

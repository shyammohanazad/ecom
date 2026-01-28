import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/features/personalization/screens/addresses/add_new_address.dart';
import 'package:ecomm_store_app/features/personalization/screens/addresses/widgets/single_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MyUserAddressScreen extends StatelessWidget {
  const MyUserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppAppBar(title: Text("Addresses"),),
      body: Column(
        children: [
          // Address Card
          MySingleAddress(selectedAddress: true,),
          MySingleAddress(selectedAddress: false,),

          // Add New Address button.
          FloatingActionButton(onPressed: () => Get.to(() => MyAddNewAddress()), tooltip: 'Add New Address',child: Icon(Iconsax.add),)
        ],
      ),
    );
  }
}
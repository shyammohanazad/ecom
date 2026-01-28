import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyGridLayout extends StatelessWidget {
  const MyGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: MyAppSizes.gridViewSpacing,
        crossAxisSpacing: MyAppSizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}


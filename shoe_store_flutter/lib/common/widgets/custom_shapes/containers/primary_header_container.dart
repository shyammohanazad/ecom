import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecomm_store_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyAppPrimaryHeaderContainer extends StatelessWidget {
  const MyAppPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgesWidget(
      child: Container(
        color: MyAppColors.primaryColor,
        padding: EdgeInsets.all(0),

        // -- If [size.isFinite : is not true.in stack] error occured -> Read README.md file
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              // BAckground Custom Sapes
              Positioned(
                top: -150,
                right: -250,
                child: MyAppCircularContainer(
                  background: MyAppColors.textOnPrimary.withValues(alpha: 0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: MyAppCircularContainer(
                  background: MyAppColors.textOnPrimary.withValues(alpha: 0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

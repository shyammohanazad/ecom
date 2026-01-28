import 'package:ecomm_store_app/common/widgets/custom_shapes/curved_edges/custom_curved_edges.dart';
import 'package:flutter/material.dart';

class MyCurvedEdgesWidget extends StatelessWidget {
  const MyCurvedEdgesWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: MyAppCustomCurvedEdges(), child: child);
  }
}

import 'package:flutter/material.dart';
import 'package:google/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class SeeCurvedEdgeWidget extends StatelessWidget {
  const SeeCurvedEdgeWidget({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: SeeCustomCurvedEdges(), child: child);
  }
}

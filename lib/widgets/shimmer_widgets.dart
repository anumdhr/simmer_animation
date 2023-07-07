import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget.rectangular({
    super.key,
    this.width = double.infinity,
    required this.height,

  }) : this.shapeBorder = const RoundedRectangleBorder();
  const ShimmerWidget.circular({
    super.key,
    this.width = double.infinity,
    required this.height,
    this.shapeBorder = const CircleBorder(),
  });

  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade300,
      period: Duration(seconds: 3),
      child: Container(
        width: width,
        height: height,
        // color:Colors.grey ,
        decoration: ShapeDecoration(
          color: Colors.grey.shade400,
            shape: shapeBorder),

      ),
    );
  }
}

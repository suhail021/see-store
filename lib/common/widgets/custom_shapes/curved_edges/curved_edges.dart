import 'package:flutter/material.dart';

class SeeCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo( 0,size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstCurve.dx,
      firstCurve.dy,
      lastCurve.dx,
      lastCurve.dy,
    );
    
    final secondfirstCurve = Offset(0, size.height - 20);
    final secondlastCurve = Offset(size.width-30, size.height - 20);
        path.quadraticBezierTo(
      secondfirstCurve.dx,
      secondfirstCurve.dy,
      secondlastCurve.dx,
      secondlastCurve.dy,
    );
    final thiredfirstCurve = Offset(size.width, size.height - 20);
    final thiredlastCurve = Offset(size.width, size.height);
        path.quadraticBezierTo(
      thiredfirstCurve.dx,
      thiredfirstCurve.dy,
      thiredlastCurve.dx,
      thiredlastCurve.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
return true;
  }
}

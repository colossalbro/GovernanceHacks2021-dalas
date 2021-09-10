
import 'package:flutter/material.dart';


class RPSCustomPainter extends CustomPainter{


  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color(0xFF00c9c8)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path_0 = Path();
    path_0.moveTo(size.width,0);
    path_0.quadraticBezierTo(size.width*0.7425000,size.height*-0.0015000,size.width*0.6500000,0);
    path_0.quadraticBezierTo(size.width*0.5675000,size.height*0.0440000,size.width*0.6150000,size.height*0.0640000);
    path_0.quadraticBezierTo(size.width*0.7437500,size.height*0.0440000,size.width*0.7800000,size.height*0.0720000);
    path_0.cubicTo(size.width*0.8412500,size.height*0.1210000,size.width*0.5737500,size.height*0.1530000,size.width*0.7450000,size.height*0.1880000);
    path_0.cubicTo(size.width*0.8262500,size.height*0.2060000,size.width*0.8762500,size.height*0.1475000,size.width,size.height*0.1780000);
    path_0.quadraticBezierTo(size.width*1.0250000,size.height*0.1365000,size.width,0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

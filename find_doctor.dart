import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:health_plus/doctor_list.dart';

import 'doctor_list.dart';

class FindDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 120),
            ListTile(
              title: Text('Choose The Doctor',style: TextStyle(
                fontWeight: FontWeight.normal,fontSize: 24,color: Colors.black
              ),),
              subtitle: Text('You Want',style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.normal,color: Colors.black
              ),),
            ),
            ListTile(
              title: Text('Select the doctor from the doctor list',style: TextStyle(
                color: Colors.black
              ),
              ),
              subtitle: Text('Find the doctors of your choice',style: TextStyle(
                color: Colors.black
              ),),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 16),
              child: RaisedButton(
                child: Text('Get started',style: TextStyle(
                  color: Colors.white
                ),),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),),
                  color: Colors.deepOrange,
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllDoctorList()));
                  }
              ),
            ),

            // ClipPath(
            //   clipper: WaveClipperTwo(flip: false, reverse: true),
            //   child: Container(
            //     color: Colors.blue[400],
            //     height: MediaQuery.of(context).size.height *0.50,
            //     //height: displayHeight(context) * 0.20,
            //     // alignment: Alignment(-1.0,-1.0),
            //   ),
            // ),
            Container(
              child: Image(image: AssetImage('assets/images/male_doctor.png'),
              ),
            )
            // Container(
            //   color: Colors.white,
            //   child: CustomPaint(
            //     painter: CurvePainter(),
            //   ),
            // ),
           ],
        ),
      ),
    );
  }
}

// class MyCustomClipper1 extends CustomClipper<Path> {
//   @override
//   getClip(Size size) {
//     double width = size.width;
//     double height = size.height;
//     double offset =130.0;
//     Path path = Path();
//     path.moveTo(0, height -(height-offset));
//     path.lineTo(0, height);
//     path.lineTo(width, height);
//     path.lineTo(width, height-(height-offset));
//     path.quadraticBezierTo(3*width/4, 0, width/2, height-(height-offset));
//     path.quadraticBezierTo(width/4, 2*offset, 0,  height-(height-offset));
//     path.close();
//     return path;

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue[400];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 10);
    path.quadraticBezierTo(size.width * 0.25, size.height * 10,
        size.width * 0.5, size.height *1);
    path.quadraticBezierTo(size.width * 0.75, size.height * 10,
        size.width * 1.0, size.height * 10);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}





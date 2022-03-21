import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          ClipPath(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.blue,
            ),
            clipper: CustomClipPath(),
          ),
        ],
      ),
    ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width / 6, size.height / 2);

    var firstStartPoint = Offset((size.width * 0.28), (size.height * 0.5));
    var firstEndPoint =
        Offset((size.width / 3), (size.height / 4) + (size.height / 7));

    path.quadraticBezierTo(firstStartPoint.dx, firstStartPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondStartPoint = Offset((size.width / 3) * 2, firstEndPoint.dy);
    var secondEndPoint = Offset(size.width * 0.72, firstStartPoint.dy);

    path.quadraticBezierTo(
        size.width / 2, 0, secondStartPoint.dx, secondStartPoint.dy);

    path.quadraticBezierTo(secondEndPoint.dx, secondEndPoint.dy,
        size.width - (size.width / 6), size.height / 2);

    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

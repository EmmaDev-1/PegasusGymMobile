import 'package:flutter/material.dart';

class LoginHead extends StatelessWidget {
  const LoginHead({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return ClipPath(
      clipper: _BottomWaveClipper(),
      child: Container(
        height: screenHeight * 0.25,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/banner_app.jpg',
            ), // Asegúrate de tener esta imagen
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Curva inferior personalizada (onda suave)
class _BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 10);

    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 90,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

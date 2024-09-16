import 'package:adnan_ashraf_portfolio/config/app_images.dart';
import 'package:flutter/material.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [Colors.pink, Colors.blue.shade900]),
            boxShadow: const [BoxShadow(color: Colors.pink, blurRadius: 10, offset: Offset(0, 2)), BoxShadow(color: Colors.blue, blurRadius: 10, offset: Offset(0, -2))]),
        child: ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.asset(AppImages.profile, fit: BoxFit.cover)));
  }
}

import 'package:flutter/material.dart';
import '../../../config/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText({super.key, required this.start, required this.end});

  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Text(
              'I am capable of delivering high-quality cross-platform applications${Responsive.isLargeMobile(context) ? '\n' : ''} for Android, iOS, ${!Responsive.isLargeMobile(context) ? '\n' : ''}Web and Desktop, from design to deployment.',
              maxLines: 3,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value));
        });
  }
}

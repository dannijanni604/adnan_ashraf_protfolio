import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../config/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Responsive(
          desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'Flutter '),
          largeMobile: AnimatedSubtitleText(start: 30, end: 25, text: 'Flutter '),
          mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'Flutter '),
          tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'Flutter ')),
      (kIsWeb && Responsive.isLargeMobile(context)
          ? const Responsive(
              desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'Developer ', gradient: true),
              largeMobile: AnimatedSubtitleText(start: 30, end: 25, text: 'Developer ', gradient: true),
              mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'Developer ', gradient: true),
              tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'Developer ', gradient: true))
          : ShaderMask(
              shaderCallback: (bounds) {
                return const LinearGradient(colors: [
                  Colors.pink,
                  Colors.blue,
                ]).createShader(bounds);
              },
              child: const Responsive(
                  desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'Developer ', gradient: false),
                  largeMobile: AnimatedSubtitleText(start: 30, end: 25, text: 'Developer ', gradient: false),
                  mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'Developer ', gradient: true),
                  tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'Developer ', gradient: false))))
    ]);
  }
}


class AnimatedSubtitleText extends StatelessWidget {
  final double start;
  final double end;
  final String text;
  final bool gradient;

  const AnimatedSubtitleText({super.key, required this.start, required this.end, required this.text, this.gradient = false});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Text(text,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  shadows: gradient
                      ? [const Shadow(color: Colors.pink, offset: Offset(0, 2), blurRadius: 10), const Shadow(color: Colors.pink, offset: Offset(0, -2), blurRadius: 10)]
                      : [],
                  height: 0,
                  fontSize: value));
        });
  }
}
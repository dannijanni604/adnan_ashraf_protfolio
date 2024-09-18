import 'package:flutter/material.dart';

import '../../../../../config/constants.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key, required this.percentage, required this.title, this.image});

  final double percentage;
  final String title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: defaultPadding * 1.5),
        padding: const EdgeInsets.only(bottom: defaultPadding / 2),
        child: TweenAnimationBuilder(
            tween: Tween(begin: 0.0, end: percentage),
            duration: const Duration(seconds: 1),
            builder: (context, value, child) {
              return Column(children: [
                Row(children: [
                  Image.asset(image!, height: 33, width: 33, fit: BoxFit.cover),
                  const SizedBox(width: 10),
                  Expanded(flex: 10,
                      child: Text(title, style: const TextStyle(color: Colors.white))),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%')
                ]),
                const SizedBox(height: defaultPadding / 2),
                LinearProgressIndicator(value: value, backgroundColor: Colors.black, color: Colors.amberAccent)
              ]);
            }));
  }
}

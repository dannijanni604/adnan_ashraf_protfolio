import 'package:flutter/material.dart';
import '../../../view model/controller.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Transform.scale(
              scale: value,
              child: Row(children: [
                NavigationTextButton(onTap: () => controller.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeIn), text: 'Home'),
                NavigationTextButton(onTap: () {}, text: 'About'),
                NavigationTextButton(onTap: () => controller.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn), text: 'Projects'),
                NavigationTextButton(onTap: () => controller.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn), text: 'Certifications'),
                NavigationTextButton(onTap: () {}, text: 'Contact')
              ]));
        });
  }
}



class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const NavigationTextButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTap, child: Text(text, style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold, color: Colors.white)));
  }
}

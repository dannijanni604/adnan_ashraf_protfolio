import 'package:adnan_ashraf_portfolio/config/app_images.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(tween: Tween(begin: 0.0,end: percentage), duration: const Duration(seconds: 1), builder: (context, value, child) {
        return Column(
          children: [
            Row(
              children: [
                Image.asset(image!,height: 15,width: 15,fit: BoxFit.cover,),
                const SizedBox(width: 5,),
                Text(title,style: const TextStyle(color: Colors.white),),
                const Spacer(),
                Text('${(value*100).toInt().toString()}%'),
              ],
            ),
            const SizedBox(height: defaultPadding/2,),
            LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.black,
              color: Colors.amberAccent,
            ),
          ],
        );
      },),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(percentage: 0.9, title: 'Flutter',image: AppImages.flutter,),
        AnimatedLinearProgressIndicator(percentage: 0.9, title: 'Dart',image: AppImages.dart),
        AnimatedLinearProgressIndicator(percentage: 0.85, title: 'Firebase',image: AppImages.firebase),
        AnimatedLinearProgressIndicator(percentage: 0.85, title: 'Sqlite',image: AppImages.dart),
        AnimatedLinearProgressIndicator(percentage: 0.85, title: 'Responsive Design',image: AppImages.dart),
        AnimatedLinearProgressIndicator(percentage: 0.9, title: 'Clean Architecture',image: AppImages.dart),
        AnimatedLinearProgressIndicator(percentage: 0.6, title: 'Bloc',image: AppImages.bloc),
        AnimatedLinearProgressIndicator(percentage: 0.93, title: 'GetX',image: AppImages.dart),
        AnimatedLinearProgressIndicator(percentage: 0.9, title: 'Provider',image: AppImages.dart),
      ],);
  }
}

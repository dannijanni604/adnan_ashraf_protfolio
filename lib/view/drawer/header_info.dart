import 'package:flutter/material.dart';
import '../../../../config/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding / 4),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(title, style:  TextStyle(color: Colors.white,fontSize:screenWidth>1000? 14:12)), Text(text,style:TextStyle(fontSize:screenWidth>1000? 14:12))]));
  }
}

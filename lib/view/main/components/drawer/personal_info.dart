import 'package:flutter/material.dart';
import '../../../../config/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '+92 3051110035'),
        AreaInfoText(title: 'Email', text: 'adnandev604@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '/in/android-developers'),
        AreaInfoText(title: 'Github', text: '/dannijanni604'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.white),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}

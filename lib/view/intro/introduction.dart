import 'package:flutter/material.dart';

import '../../view model/responsive.dart';
import 'components/intro_body.dart';
import 'components/side_menu_button.dart';
import 'components/social_media_list.dart';
class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: screenWidth * 0.01,
          ),
          if (!Responsive.isLargeMobile(context))  MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          SizedBox(
            width: screenWidth * 0.02,
          ),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          SizedBox(
            width: screenWidth * 0.07,
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}




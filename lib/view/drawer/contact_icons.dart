import 'package:adnan_ashraf_portfolio/config/app_images.dart';
import 'package:adnan_ashraf_portfolio/config/app_urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
   double screenHeight =MediaQuery.of(context).size.height;
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(onPressed: () => launchUrl(Uri.parse(AppUrls.linkedin)), icon: SvgPicture.asset(AppImages.linkedinSvg,height: screenHeight*0.04)),
      IconButton(onPressed: () => launchUrl(Uri.parse(AppUrls.github)), icon: SvgPicture.asset(AppImages.githubSvg,height: screenHeight*0.04)),
      IconButton(onPressed: () => launchUrl(Uri.parse(AppUrls.stacksOverflow)), icon: Image.asset(AppImages.stackOverflow,height:screenHeight*0.04)),
      IconButton(onPressed: () => launchUrl(Uri.parse(AppUrls.upwork)), icon: Image.asset(AppImages.upwork,height: screenHeight*0.04))
    ]);
  }
}

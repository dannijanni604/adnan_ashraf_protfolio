import 'package:adnan_ashraf_portfolio/config/app_images.dart';
import 'package:adnan_ashraf_portfolio/config/app_urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(onPressed: () => launchUrl(Uri.parse(AppUrls.linkedin)), icon: SvgPicture.asset(AppImages.linkedinSvg)),
      IconButton(onPressed: () => launchUrl(Uri.parse(AppUrls.github)), icon: SvgPicture.asset(AppImages.githubSvg)),
      IconButton(onPressed: () => launchUrl(Uri.parse(AppUrls.stacksOverflow)), icon: SvgPicture.asset(AppImages.stackOverflow)),
      IconButton(onPressed: () => launchUrl(Uri.parse(AppUrls.upwork)), icon: SvgPicture.asset(AppImages.upwork))
    ]);
  }
}

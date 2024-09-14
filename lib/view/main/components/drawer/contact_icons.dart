import 'package:adnan_ashraf_portfolio/config/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {
          launchUrl(Uri.parse('https://linkedin.com/in/android-developers'));
        }, icon: SvgPicture.asset(AppImages.linkedinSvg)),
        IconButton(onPressed: () {
          launchUrl(Uri.parse('https://github.com/dannijanni604'));
        }, icon: SvgPicture.asset(AppImages.githubSvg)),
      ],
    );
  }
}

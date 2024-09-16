import 'package:adnan_ashraf_portfolio/config/app_images.dart';
import 'package:adnan_ashraf_portfolio/config/app_urls.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../utils/custom_widgets/social_icon_button.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SocialIconButton(icon: AppImages.linkedinSvg, onTap: () => launchUrl(Uri.parse(AppUrls.linkedin))),
      SocialIconButton(icon: AppImages.githubSvg, onTap: () => launchUrl(Uri.parse(AppUrls.github))),
      SocialIconButton(icon: 'assets/icons/dribble.svg', onTap: () => launchUrl(Uri.parse(AppUrls.stacksOverflow))),
      const SocialIconButton(icon: 'assets/icons/twitter.svg')
    ]);
  }
}

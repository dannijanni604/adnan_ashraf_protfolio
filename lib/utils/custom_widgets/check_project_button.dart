import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../config/app_images.dart';

Widget githubButton({required String githubUrl}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 3),
    child: ElevatedButton(
        onPressed: () => launchUrl(Uri.parse(githubUrl)),
        child: Row(mainAxisSize: MainAxisSize.min, children: [const Text('Check on Github'),const SizedBox(width: 5), SvgPicture.asset(AppImages.githubSvg,width: 25)])),
  );
}


Widget iosButton({required String iosUrl}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 3),
    child: ElevatedButton(
        onPressed: () => launchUrl(Uri.parse(iosUrl)),
        child: Row(mainAxisSize: MainAxisSize.min, children: [const Text('Check on AppStore'),const SizedBox(width: 5), Image.asset(AppImages.appStore,width: 33)])),
  );
}

Widget playStoreButton({required String playStoreUrl}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 3),
    child: ElevatedButton(
        onPressed: () => launchUrl(Uri.parse(playStoreUrl)),
        child: Row(mainAxisSize: MainAxisSize.min, children: [const Text('Check on PlayStore'),const SizedBox(width: 5), Image.asset(AppImages.playStore,width: 25)])),
  );
}





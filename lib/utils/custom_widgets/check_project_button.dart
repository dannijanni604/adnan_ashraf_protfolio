import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../config/app_images.dart';
import '../../view model/responsive.dart';

Widget githubButton({required String githubUrl,required BuildContext context}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 3),
    child:Responsive.isMobile(context)?GestureDetector(onTap:() => launchUrl(Uri.parse(githubUrl)), child: SvgPicture.asset(AppImages.githubSvg,width: 25)): ElevatedButton(
        onPressed: () => launchUrl(Uri.parse(githubUrl)),
        child: Row(mainAxisSize: MainAxisSize.min, children: [const Text('Check on Github'),const SizedBox(width: 5), SvgPicture.asset(AppImages.githubSvg,width: 25)])),
  );
}


Widget iosButton({required String iosUrl,required BuildContext context}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 3),
    child:Responsive.isMobile(context)?GestureDetector(onTap:() => launchUrl(Uri.parse(iosUrl)), child: Image.asset(AppImages.appStore,width: 35)): ElevatedButton(
        onPressed: () => launchUrl(Uri.parse(iosUrl)),
        child: Row(mainAxisSize: MainAxisSize.min, children: [const Text('Check on AppStore'),const SizedBox(width: 5), Image.asset(AppImages.appStore,width: 33)])),
  );
}

Widget playStoreButton({required String playStoreUrl,required BuildContext context}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 3),
    child:Responsive.isMobile(context)?GestureDetector(onTap:() => launchUrl(Uri.parse(playStoreUrl)), child: Image.asset(AppImages.playStore,width: 25)): ElevatedButton(
        onPressed: () => launchUrl(Uri.parse(playStoreUrl)),
        child: Row(mainAxisSize: MainAxisSize.min, children: [const Text('Check on PlayStore'),const SizedBox(width: 5), Image.asset(AppImages.playStore,width: 25)])),
  );
}





import 'package:adnan_ashraf_portfolio/view/main/components/drawer/education.dart';
import 'package:flutter/material.dart';
import '../../../../config/constants.dart';
import 'contact_icons.dart';
import 'drawer_image.dart';
import 'header_info.dart';
import 'knowledge.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                  child: Column(children: [
                const DrawerImage(),
                const SizedBox(height: defaultPadding),
                Text('M. Adnan Ashraf', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: defaultPadding / 4),
                const Text('Flutter Developer', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w200, height: 1.5)),
                const SizedBox(height: defaultPadding)
              ])),
              const AreaInfoText(title: 'Contact', text: '+92 3051110035'),
              const AreaInfoText(title: 'Email', text: 'adnandev604@gmail.com'),
              const AreaInfoText(title: 'Address', text: 'Lahore, Punjab, Pakistan'),
              const Divider(),
              const Knowledge(),
              const Divider(),
              const Education(),
              const Divider(),
              const ContactIcon()
            ])));
  }
}

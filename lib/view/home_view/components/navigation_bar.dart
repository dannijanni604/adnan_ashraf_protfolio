import 'package:flutter/material.dart';
import '../../../config/constants.dart';
import '../../../view model/responsive.dart';
import '../../home_body/components/side_menu_button.dart';
import 'whatsapp_button.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const Spacer(),
      Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: !Responsive.isLargeMobile(context) ? const SizedBox() : MenuButton(onTap: () => Scaffold.of(context).openDrawer())),
      if (Responsive.isLargeMobile(context)) const MenuButton(),
      const Spacer(flex: 2),
      if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
      const Spacer(flex: 2),
      const WhatsappButton(),
      const Spacer()
    ]));
  }
}

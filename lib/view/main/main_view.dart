import 'package:flutter/material.dart';
import '../../config/constants.dart';
import '../../view model/controller.dart';
import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_bar.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});

  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            const Expanded(
                flex: 2,
                child: CustomDrawer()),
            Expanded(
              flex: 5,
              child: Center(
                  child: Column(children: [
                kIsWeb && !Responsive.isLargeMobile(context)
                    ? const SizedBox(
                        height: defaultPadding * 2,
                      )
                    : const SizedBox(
                        height: defaultPadding / 2,
                      ),
                const SizedBox(
                  height: 80,
                  child: TopNavigationBar(),
                ),
                if (Responsive.isLargeMobile(context))
                  const Row(
                    children: [Spacer(), NavigationButtonList(), Spacer()],
                  ),
                Expanded(flex: 9, child: PageView(scrollDirection: Axis.vertical, physics: const NeverScrollableScrollPhysics(), controller: controller, children: [...pages]))
              ])),
            ),
          ],
        ));
  }
}

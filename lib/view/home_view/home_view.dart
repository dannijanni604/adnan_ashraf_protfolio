import 'package:adnan_ashraf_portfolio/view/about/about_view.dart';
import 'package:flutter/material.dart';
import '../../config/constants.dart';
import '../../view model/controller.dart';
import '../../view model/responsive.dart';
import '../certificates/certificates_view.dart';
import '../drawer/drawer.dart';
import '../home_body/home_body.dart';
import '../projects/project_view.dart';
import 'components/navigation_bar.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
        body: Row(children: [
          kIsWeb && !Responsive.isLargeMobile(context) ?
      const Expanded(flex: 2, child: CustomDrawer()):const SizedBox(),
      Expanded(
          flex: 5,
          child: Center(
              child: Column(children: [
            kIsWeb && !Responsive.isLargeMobile(context) ? const SizedBox(height: defaultPadding * 2) : const SizedBox(height: defaultPadding / 2),
                if(Responsive.isMobile(context))const SizedBox(height: defaultPadding),
                const SizedBox(height: 80, child: TopNavigationBar()),
            if (Responsive.isLargeMobile(context)) const Row(children: [Spacer(), NavigationButtonList(), Spacer()]),
            Expanded(
                flex: 9,
                child: PageView(
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller,
                    children: [const HomeBody(), const AboutView(), ProjectsView(), CertificateView()]))
          ])))
    ]));
  }
}

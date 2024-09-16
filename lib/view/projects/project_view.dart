import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/constants.dart';
import '../../view model/getx_controllers/projects_controller.dart';
import '../../view model/responsive.dart';
import 'components/project_deatail.dart';
import 'components/projects_grid.dart';
import 'components/title_text.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});

  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (Responsive.isLargeMobile(context)) const SizedBox(height: defaultPadding),
      const TitleText(prefix: 'Latest', title: 'Projects'),
      const SizedBox(height: defaultPadding),
      Responsive(
          desktop: ListView(children: [

            AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Colors.pinkAccent,
                      Colors.blue,
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        offset: const Offset(-2, 0),
                        blurRadius: controller.hovers[1] ? 20 : 10,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        offset: const Offset(2, 0),
                        blurRadius: controller.hovers[1] ? 20 : 10,
                      ),
                    ]),
                child: AnimatedContainer(
                  padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: bgColor),
                  duration: const Duration(milliseconds: 500),
                  child: const ProjectDetail(index: 1),
                )),


          ],),
          extraLargeScreen: ProjectGrid(crossAxisCount: 4),
          largeMobile: ProjectGrid(crossAxisCount: 1, ratio: 1.8),
          mobile: ProjectGrid(crossAxisCount: 1, ratio: 1.5),
          tablet: ProjectGrid(ratio: 1.4, crossAxisCount: 2))
    ]));
  }
}

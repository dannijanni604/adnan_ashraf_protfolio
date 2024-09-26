import 'package:adnan_ashraf_portfolio/view/projects/components/project_animated_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/constants.dart';
import '../../config/responsive.dart';
import '../../utils/custom_widgets/title_text.dart';
import 'controller/project_controller.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});

  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (Responsive.isLargeMobile(context)) const SizedBox(height: defaultPadding),
      const TitleText(prefix: 'Latest', title: 'Projects'),
      if (!Responsive.isLargeMobile(context)) const SizedBox(height: defaultPadding),
      SizedBox(height: MediaQuery.of(context).size.height *0.77, child: projectAnimatedContainer())
    ])));
  }
}

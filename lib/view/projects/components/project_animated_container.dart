import 'package:adnan_ashraf_portfolio/view/projects/components/project_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/constants.dart';
import '../../../view model/responsive.dart';
import '../controller/project_controller.dart';
import '../model/project.dart';

Widget projectAnimatedContainer() {
  final controller = Get.put(ProjectController());
  return ListView.builder(
      itemCount: projectList.length,
      itemBuilder: (context, index) =>  AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: EdgeInsets.only(
              bottom: defaultPadding,
              right: Responsive.isMobile(context) ? defaultPadding / 1.8 : defaultPadding,
              left: Responsive.isMobile(context) ? defaultPadding / 1.8 : defaultPadding,
              top: Responsive.isMobile(context) ? 0 : defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Responsive.isMobile(context) ? 20 : 30),
              gradient: const LinearGradient(colors: [Colors.pinkAccent, Colors.blue]),
              boxShadow: [
                BoxShadow(color: Colors.pink, offset: const Offset(-2, 0), blurRadius: controller.hovers[1] ? 20 : 10),
                BoxShadow(color: Colors.blue, offset: const Offset(2, 0), blurRadius: controller.hovers[1] ? 20 : 10),
              ]),
          child: AnimatedContainer(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(Responsive.isMobile(context) ? 20 : 30), color: bgColor),
              duration: const Duration(milliseconds: 500),
              child: ProjectWidget(index: index))));
}

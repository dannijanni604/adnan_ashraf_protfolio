import 'package:adnan_ashraf_portfolio/view/projects/components/project_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/constants.dart';
import '../controller/project_controller.dart';
import '../model/project.dart';

Widget projectAnimatedContainer()
{
  final controller = Get.put(ProjectController());
 return ListView.builder(
  itemCount: projectList.length,
     itemBuilder: (context, index) => AnimatedContainer(
     duration: const Duration(milliseconds: 200),
     margin: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding * 1.5),
     decoration:
     BoxDecoration(borderRadius: BorderRadius.circular(30), gradient: const LinearGradient(colors: [Colors.pinkAccent, Colors.blue]), boxShadow: [
       BoxShadow(color: Colors.pink, offset: const Offset(-2, 0), blurRadius: controller.hovers[1] ? 20 : 10),
       BoxShadow(color: Colors.blue, offset: const Offset(2, 0), blurRadius: controller.hovers[1] ? 20 : 10),
     ]),
     child: AnimatedContainer(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: bgColor),
         duration: const Duration(milliseconds: 500),
         child: ProjectWidget(index: index))));
}
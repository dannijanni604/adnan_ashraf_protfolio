import 'package:adnan_ashraf_portfolio/view/about/components/experience_widget.dart';
import 'package:adnan_ashraf_portfolio/view/about/controller/experience_controller.dart';
import 'package:adnan_ashraf_portfolio/view/about/model/experience.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/constants.dart';
import '../../../config/responsive.dart';

class ExperienceGrid extends StatelessWidget {
  ExperienceGrid({super.key});

  final controller = Get.put(ExperienceController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: experienceList.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: Responsive.isMobile(context) ? 1 : 2, childAspectRatio:Responsive.isMobile(context) ?2.2: 2.35, crossAxisSpacing: 30),
        itemBuilder: (context, index) {
          return Obx(() => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: EdgeInsets.symmetric(vertical:Responsive.isMobile(context) ?defaultPadding/2: defaultPadding),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(Responsive.isMobile(context) ?15:30), gradient: const LinearGradient(colors: [Colors.pinkAccent, Colors.blue]), boxShadow: [
                BoxShadow(color: Colors.pink, offset: const Offset(-2, 0), blurRadius: controller.hovers[index] ? 20 : 10),
                BoxShadow(color: Colors.blue, offset: const Offset(2, 0), blurRadius: controller.hovers[index] ? 20 : 10)
              ]),
              child: ExperienceWidget(index: index)));
        });
  }
}

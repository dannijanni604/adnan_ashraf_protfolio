import 'package:adnan_ashraf_portfolio/view/about/components/experience_widget.dart';
import 'package:adnan_ashraf_portfolio/view/about/controller/experience_controller.dart';
import 'package:adnan_ashraf_portfolio/view/about/model/experience.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/constants.dart';

class ExperienceGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;

  ExperienceGrid({super.key, this.crossAxisCount = 2, this.ratio = 2.35});

  final controller = Get.put(ExperienceController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: experienceList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount, childAspectRatio: ratio,crossAxisSpacing: 30),
        itemBuilder: (context, index) {
          return Obx(() => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(vertical: defaultPadding),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), gradient: const LinearGradient(colors: [Colors.pinkAccent, Colors.blue]), boxShadow: [
                BoxShadow(color: Colors.pink, offset: const Offset(-2, 0), blurRadius: controller.hovers[index] ? 20 : 10),
                BoxShadow(color: Colors.blue, offset: const Offset(2, 0), blurRadius: controller.hovers[index] ? 20 : 10)
              ]),
              child: ExperienceWidget(index: index)));
        });
  }
}

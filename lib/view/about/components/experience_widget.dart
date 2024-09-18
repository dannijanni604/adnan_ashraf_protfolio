import 'package:adnan_ashraf_portfolio/view/about/controller/experience_controller.dart';
import 'package:adnan_ashraf_portfolio/view/about/model/experience.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constants.dart';
import '../../../view model/responsive.dart';

class ExperienceWidget extends StatelessWidget {
   ExperienceWidget({super.key, required this.index});

  final int index;
  final controller = Get.put(ExperienceController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onHover: (value) => controller.onHover(index, value),
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        child: AnimatedContainer(
            padding:  EdgeInsets.all( Responsive.isMobile(context) ?defaultPadding/1.5:defaultPadding),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(Responsive.isMobile(context) ?15:30), color: bgColor),
            duration: const Duration(milliseconds: 500),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(experienceList[index].role,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis),
              const SizedBox(height: defaultPadding/2),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(experienceList[index].company, style: const TextStyle(color: Colors.amber)),
                Text(experienceList[index].status, style: const TextStyle(color: Colors.grey, fontSize: 12))
              ]),
              const SizedBox(height: defaultPadding / 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text.rich(
                    maxLines: 1,
                    TextSpan(
                        text: 'Start Date : ',
                        style: const TextStyle(color: Colors.white),
                        children: [TextSpan(text: experienceList[index].startDate, style: const TextStyle(color: Colors.grey, overflow: TextOverflow.ellipsis))])),
                Text.rich(
                    maxLines: 1,
                    TextSpan(
                        text: 'End Date : ',
                        style: const TextStyle(color: Colors.white),
                        children: [TextSpan(text: experienceList[index].endDate, style: const TextStyle(color: Colors.grey, overflow: TextOverflow.ellipsis))]))
              ],),
              // const SizedBox(height: defaultPadding),
            ])));
  }
}

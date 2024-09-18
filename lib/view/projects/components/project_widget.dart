import 'package:adnan_ashraf_portfolio/utils/custom_widgets/check_project_button.dart';
import 'package:adnan_ashraf_portfolio/view/projects/components/image_viewer.dart';
import 'package:flutter/material.dart';
import '../../../config/constants.dart';
import '../../../view model/responsive.dart';
import '../model/project.dart';

class ProjectWidget extends StatelessWidget {
  final int index;

  const ProjectWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(children: [
      Expanded(
          child: InkWell(
              onTap: () => ImageViewer(context, projectList[index].image),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(Responsive.isMobile(context) ? 20 : 30),
                  child: Column(children: [
                    SizedBox(height: Responsive.isMobile(context) ? 150 : size.width * 0.2, child: Image.asset(projectList[index].image, fit: BoxFit.cover))
                  ])))),
      SizedBox(width: Responsive.isMobile(context) ? defaultPaddingMobile : defaultPadding),
      Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(projectList[index].name, style: Responsive.isMobile(context) ? projectMobileHeading : projectWebHeading, maxLines: 2, overflow: TextOverflow.ellipsis),
        Responsive.isMobile(context) ? const SizedBox(height: defaultPadding / 2) : const SizedBox(height: defaultPadding),
        Text(projectList[index].description,
            style: const TextStyle(color: Colors.grey, height: 1.5),
            maxLines: size.width > 700 && size.width < 750
                ? 3
                : size.width < 470
                    ? 2
                    : size.width > 600 && size.width < 700
                        ? 6
                        : size.width > 900 && size.width < 1060
                            ? 6
                            : 4,
            overflow: TextOverflow.ellipsis),
        SizedBox(height: Responsive.isMobile(context) ? defaultPaddingMobile : defaultPadding),
        Row(children: [
          if (projectList[index].githubUrl.isNotEmpty) githubButton(context: context, githubUrl: projectList[index].githubUrl),
          if (projectList[index].playStoreUrl.isNotEmpty) playStoreButton(context: context, playStoreUrl: projectList[index].playStoreUrl),
          if (projectList[index].iosUrl.isNotEmpty) iosButton(context: context, iosUrl: projectList[index].iosUrl)
        ])
      ])),
      SizedBox(width: Responsive.isMobile(context) ? defaultPaddingMobile : defaultPadding),
    ]);
  }
}

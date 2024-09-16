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
              child: ClipRRect(borderRadius: BorderRadius.circular(30), child: Image.asset(projectList[index].image, fit: BoxFit.cover)))),
      const SizedBox(width: defaultPadding),
      Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(projectList[index].name,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white, fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis),
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
        const SizedBox(height: defaultPadding),
        Row(children: [
          if (projectList[index].githubUrl.isNotEmpty) githubButton(githubUrl: projectList[index].githubUrl),
          if (projectList[index].playStoreUrl.isNotEmpty) playStoreButton(playStoreUrl: projectList[index].playStoreUrl),
          if (projectList[index].iosUrl.isNotEmpty) iosButton(iosUrl: projectList[index].iosUrl)
        ])
      ]))
    ]);
  }
}

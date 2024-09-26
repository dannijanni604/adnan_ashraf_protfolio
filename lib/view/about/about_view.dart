import 'package:adnan_ashraf_portfolio/view/about/components/experience_grid.dart';
import 'package:flutter/material.dart';
import '../../config/const_strings.dart';
import '../../config/constants.dart';
import '../../config/responsive.dart';
import '../../utils/custom_widgets/title_text.dart';
import 'components/skill_widget.dart';
import 'model/skill.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (Responsive.isLargeMobile(context)) const SizedBox(height: defaultPadding),
      const TitleText(prefix: '', title: 'About'),
      Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
              textAlign: TextAlign.justify,
               aboutText,
               style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white))),
      Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Text('Experiences',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white, fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      SizedBox(
        height: Responsive.isMobile(context)? MediaQuery.of(context).size.height * 0.9: MediaQuery.of(context).size.width * 0.41,
        child: ExperienceGrid(),
      ),
      Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Text('Skills',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white, fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      SizedBox(
          height: Responsive.isMobile(context)? MediaQuery.of(context).size.height * 2.9: MediaQuery.of(context).size.width * 1.2,
          child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: Responsive.isMobile(context)? 1:2, childAspectRatio: 4),
                  itemBuilder: (context, index) => SkillWidget(percentage: skillsList[index].percentage, title: skillsList[index].name, image: skillsList[index].image),
                  itemCount: skillsList.length)))
    ])));
  }
}

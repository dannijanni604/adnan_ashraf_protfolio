import 'package:adnan_ashraf_portfolio/view/about/components/experience_grid.dart';
import 'package:flutter/material.dart';
import '../../config/constants.dart';
import '../../view model/responsive.dart';
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
              "Over the past three years, I've been deeply immersed in Flutter Framework for cross-platform application development. My journey has led me to develop Android, iOS, and Web applications, each project adding depth to my skills and fueling my passion for more. As I gaze into the future, I'm eager to explore new avenues and embrace fresh challenges within the ever-evolving landscape of app development. The prospect of pushing the boundaries of mobile technology is what propels me forward. If you share my enthusiasm for the limitless possibilities in app development, I invite you to connect with me. Together, we can embark on an incredible journey of exploration and innovation, shaping the future of mobile applications. My expertise spans UI/UX Design, Performance Optimization, State Management, Error Handling, Testing and Debugging, Accessibility, Cross-Platform Consistency, Payment Integrations, Web and REST API Integrations, Local and Push Notifications, State Management with BLoC, Provider, GetX, Maps Integrations, and all other 3rd party integrations. Let's collaborate and create something extraordinary – reach out today, and let's begin this exhilarating journey of growth and innovation.",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white))),

              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Text('Experiences',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white, fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis),
              ),

SizedBox(height: MediaQuery.of(context).size.width * 0.4,
  child: ExperienceGrid(),
),
      Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Text('Skills',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white, fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      SizedBox(
          height: MediaQuery.of(context).size.width * 0.5,
          child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 4),
                  itemBuilder: (context, index) => SkillWidget(percentage: skillsList[index].percentage, title: skillsList[index].name, image: skillsList[index].image),
                  itemCount: skillsList.length)))
    ])));
  }
}

import 'package:adnan_ashraf_portfolio/config/app_images.dart';

class Skill {
  final String name;
  final double percentage;
  final String image;

  Skill({required this.name, required this.percentage,required this.image});
}

List<Skill> skillsList = [
  Skill(name: 'Cross-Platform Compatibility', percentage: 0.8, image: AppImages.flutter),
  Skill(name: 'Bloc State Management', percentage: 0.75, image: AppImages.bloc),
  Skill(name: 'Provider', percentage: 0.9, image: AppImages.flutter),
  Skill(name: 'GetX', percentage: 0.9, image: AppImages.getx),
  Skill(name: 'Riverpod', percentage: 0.4, image: AppImages.riverpod),
  Skill(name: "Serverpod APIs development", percentage: 0.4, image: AppImages.serverpod),
  Skill(name: "Sqflite Offline Database", percentage: 0.74, image: AppImages.sqfLite),
  Skill(name: "SSO Integration", percentage: 0.85, image: AppImages.sso),
  Skill(name: "Rest APIs", percentage: 0.9, image: AppImages.restApi),
  Skill(name: "Web APIs", percentage: 0.9, image: AppImages.webApi),
  Skill(name: "Firebase Integration", percentage: 0.9, image: AppImages.firebase),
  Skill(name: "UI/UX Design and Customization", percentage: 0.9, image: AppImages.uiux),
  Skill(name: "Responsive Design", percentage: 0.9, image: AppImages.design),
  Skill(name: "Localization and Internationalization", percentage: 0.9, image: AppImages.localization),
  Skill(name: "Push and Local Notification", percentage: 0.9, image: AppImages.notification),
  Skill(name: "Google Maps Integration", percentage: 0.9, image: AppImages.map),
  Skill(name: "Animations in design", percentage: 0.9, image: AppImages.animation),
  Skill(name: "MVC and MVVM Architecture", percentage: 0.9, image: AppImages.architecture),
  Skill(name: "Flutter Package Customization", percentage: 0.9, image: AppImages.flutter),
  Skill(name: "Testing and Debugging", percentage: 0.9, image: AppImages.testing),
  Skill(name: "Application Performance Optimization", percentage: 0.9, image: AppImages.performance),
  Skill(name: "Secure Coding Practice", percentage: 0.8, image: AppImages.secure),
  Skill(name: "Continuous Integration/Continuous Deployment (CI/CD)", percentage: 0.8, image: AppImages.cicd),
  Skill(name: "Git Version Control", percentage: 0.9, image: AppImages.git),
  Skill(name: "Ply Store Publication", percentage: 0.9, image: AppImages.playStore),
  Skill(name: "App Store Publication", percentage: 0.9, image: AppImages.appStore),
  Skill(name: "Web Deployment", percentage: 0.9, image: AppImages.web),
];

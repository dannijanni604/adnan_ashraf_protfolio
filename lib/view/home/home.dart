import 'package:flutter/material.dart';
import '../certifications/certifications.dart';
import '../intro/components/intro_body.dart';
import '../main/main_view.dart';
import '../projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      ProjectsView(),
      Certifications(),
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/constants.dart';
import '../../view model/responsive.dart';
import '../../utils/custom_widgets/title_text.dart';
import 'components/certification_grid.dart';
import 'controller/certificate_controller.dart';

class CertificateView extends StatelessWidget {
  final controller = Get.put(CertificateController());

  CertificateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                if (Responsive.isLargeMobile(context)) const SizedBox(height: defaultPadding),
                const TitleText(prefix: 'Certifications & ', title: 'License'),
                const SizedBox(height: defaultPadding),
                SizedBox(
            height: MediaQuery.of(context).size.height*0.9,
            child: Responsive(
                desktop: CertificateGrid(crossAxisCount: 2, ratio: 1.7),
                extraLargeScreen: CertificateGrid(crossAxisCount: 4, ratio: 1.6),
                largeMobile: CertificateGrid(crossAxisCount: 1, ratio: 1.8),
                mobile: CertificateGrid(crossAxisCount: 1, ratio: 1.4),
                tablet: CertificateGrid(ratio: 1.7, crossAxisCount: 2)))
              ]),
        ));
  }
}

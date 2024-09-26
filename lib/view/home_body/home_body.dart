import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import '../../config/constants.dart';
import '../../config/responsive.dart';
import 'components/combine_subtitle.dart';
import 'components/description_text.dart';
import 'components/download_button.dart';
import 'components/headline_text.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(Responsive.isMobile(context) ? 10 : 0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
                if (!Responsive.isMobile(context)) SizedBox(height: size.height * 0.06),
                if (!Responsive.isDesktop(context)) Row(children: [SizedBox(width: size.width * 0.23)]),
                if (!Responsive.isDesktop(context)) SizedBox(height: size.height * 0.1),
                const Responsive(
                    desktop: MyPortfolioText(start: 40, end: 50),
                    largeMobile: MyPortfolioText(start: 40, end: 35),
                    mobile: MyPortfolioText(start: 28, end: 25),
                    tablet: MyPortfolioText(start: 50, end: 40)),
                if (kIsWeb && Responsive.isLargeMobile(context)) Container(height: defaultPadding, color: Colors.transparent),
                const CombineSubtitleText(),
                const SizedBox(height: defaultPadding / 2),
                const Responsive(
                    desktop: AnimatedDescriptionText(start: 14, end: 15),
                    largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                    mobile: AnimatedDescriptionText(start: 11, end: 10),
                    tablet: AnimatedDescriptionText(start: 17, end: 14)),
                const SizedBox(height: defaultPadding * 2),
                const DownloadButton()
              ])))
    ]);
  }
}

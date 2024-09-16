import 'package:adnan_ashraf_portfolio/config/app_urls.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../config/constants.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: InkWell(
            onTap: () => launchUrl(Uri.parse(AppUrls.whatsapp)),
            borderRadius: BorderRadius.circular(defaultPadding + 10),
            child: Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultPadding),
                    gradient: LinearGradient(colors: [Colors.pink, Colors.blue.shade900]),
                    boxShadow: const [
                      BoxShadow(color: Colors.blue, offset: Offset(0, -1), blurRadius: defaultPadding / 4),
                      BoxShadow(color: Colors.red, offset: Offset(0, 1), blurRadius: defaultPadding / 4)
                    ]),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                  const Icon(FontAwesomeIcons.whatsapp, color: Colors.greenAccent, size: 15),
                  const SizedBox(width: defaultPadding / 4),
                  Text('Whatsapp', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white, letterSpacing: 1.2, fontWeight: FontWeight.bold))
                ]))));
  }
}

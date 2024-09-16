import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/constants.dart';

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({super.key, required this.icon, this.onTap});

  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Padding(padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4), child: SvgPicture.asset(color: Colors.white, icon, height: 15, width: 15)));
  }
}
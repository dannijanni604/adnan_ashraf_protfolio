import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../config/constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text('Knowledge', style: TextStyle(color: Colors.white))),
      knowledgeText('Flutter'),
      knowledgeText(' Dart'),
      knowledgeText(' OOP'),
      knowledgeText('Git, Github')
    ]);
  }
}

Widget knowledgeText(knowledge) {
  return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(children: [SvgPicture.asset('assets/icons/check.svg'), const SizedBox(width: defaultPadding / 2), Text(knowledge)]));
}

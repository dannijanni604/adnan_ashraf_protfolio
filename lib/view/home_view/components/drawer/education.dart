import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text('Education', style: TextStyle(color: Colors.white))),
      Text("Bachelors of Computer Science"),
      Text('University of Okara'),
    ]);
  }
}

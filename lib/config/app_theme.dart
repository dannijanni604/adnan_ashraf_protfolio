import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData primaryTheme(context){
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    scaffoldBackgroundColor: bgColor,
    useMaterial3: true,
    textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Colors.white,)
        .copyWith(
      bodyLarge: const TextStyle(color: bodyTextColor),
      bodyMedium: const TextStyle(color: bodyTextColor),
    ),
  );
}
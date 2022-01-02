import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

final ThemeData appThemeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 1,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.grey,
    ),
    titleTextStyle: TextStyle(color: Colors.black)
  ),
  scaffoldBackgroundColor: clrBackground,
  fontFamily: 'SFPro',
);

// Copyright 2020-2021 Ben Hills. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

final ThemeData _lightTheme = _buildLightTheme();
final ThemeData _darkTheme = _buildDarktheme();

ThemeData _buildLightTheme() {
  final base = ThemeData.light();

  return base.copyWith(
    colorScheme: ColorScheme.light(
      primary: Color(0xffff9800),
      background: Color(0xffffe0b2),
    ),
    brightness: Brightness.light,
    primaryColor: Color(0xffff9800),
    primaryColorBrightness: Brightness.light,
    primaryColorLight: Color(0xffffe0b2),
    primaryColorDark: Color(0xfff57c00),
    accentColor: Color(0xffff9800),
    accentColorBrightness: Brightness.light,
    canvasColor: Color(0xfffafafa),
    scaffoldBackgroundColor: Color(0xffffffff),
    bottomAppBarColor: Color(0xffffffff),
    cardColor: Color(0xffffffff),
    dividerColor: Color(0x1f000000),
    highlightColor: Color(0x66bcbcbc),
    splashColor: Color(0x66c8c8c8),
    selectedRowColor: Color(0xffff9800),
    unselectedWidgetColor: Color(0x8a000000),
    disabledColor: Color(0x61000000),
    buttonColor: Colors.orange,
    toggleableActiveColor: Color(0xfffb8c00),
    secondaryHeaderColor: Color(0xfffff3e0),
    backgroundColor: Color(0xffffffff),
    dialogBackgroundColor: Color(0xffffffff),
    indicatorColor: Colors.blue,
    hintColor: Color(0x8a000000),
    errorColor: Color(0xffd32f2f),
    primaryTextTheme: Typography.material2018(platform: TargetPlatform.android).black,
    textTheme: Typography.material2018(platform: TargetPlatform.android).black,
    accentTextTheme: Typography.material2018(platform: TargetPlatform.android).black,
    primaryIconTheme: IconThemeData(color: Colors.grey[800]),
    iconTheme: IconThemeData(color: Colors.orange),
    sliderTheme: SliderThemeData().copyWith(
      valueIndicatorColor: Colors.orange,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(primary: Colors.grey[800]),
    ),
  );
}

ThemeData _buildDarktheme() {
  final base = ThemeData.dark();

  return base.copyWith(
    colorScheme: ColorScheme.dark(
      primary: Color(0xffffffff),
      background: Color(0x80ffffff),
    ),
    brightness: Brightness.dark,
    primaryColor: Color(0xffffffff),
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: Color(0xffffe0b2),
    primaryColorDark: Color(0xfff57c00),
    accentColor: Color(0xffffffff),
    accentColorBrightness: Brightness.dark,
    canvasColor: Color(0xff000000),
    scaffoldBackgroundColor: Color(0xff000000),
    bottomAppBarColor: Color(0xff222222),
    cardColor: Colors.black,
    dividerColor: Color(0xff444444),
    highlightColor: Color(0xff222222),
    splashColor: Color(0x66c8c8c8),
    selectedRowColor: Color(0x77ffffff),
    unselectedWidgetColor: Colors.white,
    disabledColor: Color(0x77ffffff),
    buttonColor: Color(0xffffffff),
    toggleableActiveColor: Color(0xfffb8c00),
    secondaryHeaderColor: Color(0xfffff3e0),
    backgroundColor: Color(0xff222222),
    dialogBackgroundColor: Color(0xff222222),
    indicatorColor: Colors.orange,
    hintColor: Color(0x80ffffff),
    errorColor: Color(0xffd32f2f),
    primaryTextTheme: Typography.material2018(platform: TargetPlatform.android).white,
    textTheme: Typography.material2018(platform: TargetPlatform.android).white,
    accentTextTheme: Typography.material2018(platform: TargetPlatform.android).white,
    primaryIconTheme: IconThemeData(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
    dividerTheme: base.dividerTheme.copyWith(
      color: Color(0xff444444),
    ),
    sliderTheme: SliderThemeData().copyWith(
      valueIndicatorColor: Colors.white,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: Color(0xff222222),
      foregroundColor: Colors.white,
      shadowColor: Color(0xff222222),
      elevation: 1.0,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Color(0xffffffff),
        side: BorderSide(
          color: Color(0xffffffff),
          style: BorderStyle.solid,
        ),
      ),
    ),
  );
}

class Themes {
  final ThemeData themeData;

  Themes({@required this.themeData});

  factory Themes.lightTheme() {
    return Themes(themeData: _lightTheme);
  }

  factory Themes.darkTheme() {
    return Themes(themeData: _darkTheme);
  }
}

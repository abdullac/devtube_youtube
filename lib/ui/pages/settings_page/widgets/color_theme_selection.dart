import 'package:flutter/material.dart';

 ThemeColor selectedThemeColor = ThemeColor.teal;

enum ThemeColor {
  black,
  teal,
  red,
  pink,
  grey,
  // white,
  purple,
}

List<List<dynamic>> colorThemeList = [
  [Colors.black, ThemeColor.black],
  [Colors.teal, ThemeColor.teal],
  [Colors.red.shade700, ThemeColor.red],
  [Colors.pink.shade400, ThemeColor.pink],
  [Colors.grey.shade500, ThemeColor.grey],
  // [Colors.white.withAlpha(100), ThemeColor.white],
  [Colors.purple, ThemeColor.purple],
];

class ColorThemeSeletion extends StatelessWidget {
  const ColorThemeSeletion({
    super.key,
  });

  static var selectColorThemeNotifier = ValueNotifier(ThemeColor.pink);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Color Theme"),
      children: [
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: colorThemeRadioList(),
          ),
        ),
      ],
    );
  }
}

class ColorThemeRadio extends StatelessWidget {
  final Color color;
  final ThemeColor groupValue;
  const ColorThemeRadio({
    super.key,
    required this.color,
    required this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ColorThemeSeletion.selectColorThemeNotifier,
        builder: (context, newValue, _) {
          // Color color = Colors.black;

          return Radio(
            fillColor: MaterialStateProperty.all(color),
            value: groupValue,
            groupValue: newValue,
            onChanged: (value) {
              //
              if (value != null) {
                ColorThemeSeletion.selectColorThemeNotifier.value = value;
                ColorThemeSeletion.selectColorThemeNotifier.notifyListeners();
                selectedThemeColor = value;
              }
            },
          );
        });
  }
}

List<Widget> colorThemeRadioList() {
  List<Widget> colorThemeRadioListTemp = [];
  for (var element in colorThemeList) {
    colorThemeRadioListTemp
        .add(ColorThemeRadio(color: element[0], groupValue: element[1]));
  }
  return colorThemeRadioListTemp;
}

/////////////////////////////

///    textStyle

// TextStyle textStyle2(ThemeColor themeColor) =>
//     TextStyle(color: themeColor.index <= 3 ? Colors.white : Colors.black);

// TextStyle textStyle4(ThemeColor themeColor) => TextStyle(
//     color: themeColor.index <= 3
//         ? colorThemeList[themeColor.index][0].withAlpha(200)
//         : colorThemeList[themeColor.index][0].withAlpha(800));


/// background color

Color darkAreaColor(ThemeColor themeColor) =>
    colorThemeList[themeColor.index][0].withAlpha(500);

Color normalAreaColor(ThemeColor themeColor) =>
    colorThemeList[themeColor.index][0].withAlpha(700);

Color lightAreaColor(ThemeColor themeColor) =>
    colorThemeList[themeColor.index][0].withAlpha(100);

Color maxLightAreaColor(ThemeColor themeColor) =>
    colorThemeList[themeColor.index][0].withAlpha(300);

///////////////////////////
////   light colors - grey,white,purple
///    dark  colors - black, teal,red,pink



//////   color alpha
///
///   Dark <- 500,200,700,400,900,100,600,300,800 -> Light
//          Container(
//           width: double.infinity,
//           height: 35,
//           color: Colors.teal.withAlpha(500),
//         ), Container(
//           width: double.infinity,
//           height: 35,
//           color: Colors.teal.withAlpha(200),
//         ), Container(
//           width: double.infinity,
//           height: 35,
//           color: Colors.teal.withAlpha(700),
//         ), Container(
//           width: double.infinity,
//           height: 35,
//           color: Colors.teal.withAlpha(400),
//         ), Container(
//           width: double.infinity,
//           height: 35,
//           color: Colors.teal.withAlpha(900),
//         ), Container(
//           width: double.infinity,
//           height: 35,
//           color: Colors.teal.withAlpha(100),
//         ), Container(
//           width: double.infinity,
//           height: 35,
//           color: Colors.teal.withAlpha(600),
//         ), Container(
//           width: double.infinity,
//           height: 35,
//           color: Colors.teal.withAlpha(300),
//         ), Container(
//           width: double.infinity,
//           height: 35,
//           color: Colors.teal.withAlpha(800),
//         ),
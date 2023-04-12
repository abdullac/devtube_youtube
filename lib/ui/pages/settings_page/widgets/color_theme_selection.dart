import 'package:devtube_sample/utils/functions/color_theme_radio_list.dart';
import 'package:flutter/material.dart';


enum ThemeColor {
  black,
  teal,
  red,
  pink,
  grey,
  purple,
}

List<List<dynamic>> colorThemeList = [
  [Colors.black, ThemeColor.black],
  [Colors.teal, ThemeColor.teal],
  [Colors.red.shade700, ThemeColor.red],
  [Colors.pink.shade400, ThemeColor.pink],
  [Colors.grey.shade500, ThemeColor.grey],
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

          return Radio(
            fillColor: MaterialStateProperty.all(color),
            value: groupValue,
            groupValue: newValue,
            onChanged: (value) {
              //
              if (value != null) {
                ColorThemeSeletion.selectColorThemeNotifier.value = value;
                ColorThemeSeletion.selectColorThemeNotifier.notifyListeners();
                print("It will be effected after restart app");
              }
            },
          );
        });
  }
}




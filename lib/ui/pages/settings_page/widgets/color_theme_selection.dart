import 'package:flutter/material.dart';

enum ThemeColor {
  grey,
  black,
  white,
  teal,
  red,
  pink,
  purple,
}

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
            children: [
              const ColorThemeRadio(
                color: Colors.black,
                groupValue: ThemeColor.black,
              ),
              ColorThemeRadio(
                color: Colors.grey.shade500,
                groupValue: ThemeColor.grey,
              ),
              ColorThemeRadio(
                color: Colors.grey.withAlpha(100),
                groupValue: ThemeColor.white,
              ),
              const ColorThemeRadio(
                color: Colors.teal,
                groupValue: ThemeColor.teal,
              ),
              ColorThemeRadio(
                color: Colors.red.shade700,
                groupValue: ThemeColor.red,
              ),
              ColorThemeRadio(
                color: Colors.pink.shade400,
                groupValue: ThemeColor.pink,
              ),
              const ColorThemeRadio(
                color: Colors.purple,
                groupValue: ThemeColor.purple,
              ),
            ],
          ),
        )
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
                print(value);
              }
            },
          );
        });
  }
}

import 'package:devtube_sample/ui/pages/settings_page/widgets/color_theme_selection.dart';
import 'package:flutter/material.dart';

List<Widget> colorThemeRadioList() {
  List<Widget> colorThemeRadioListTemp = [];
  for (var element in colorThemeList) {
    colorThemeRadioListTemp
        .add(ColorThemeRadio(color: element[0], groupValue: element[1]));
  }
  return colorThemeRadioListTemp;
}

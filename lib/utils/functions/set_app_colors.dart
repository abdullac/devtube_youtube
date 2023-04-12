import 'package:devtube_sample/ui/pages/settings_page/widgets/color_theme_selection.dart';
import 'package:flutter/material.dart';

Color darkAreaColor() =>
    colorThemeList[ColorThemeSeletion.selectColorThemeNotifier.value.index][0]
        .withAlpha(500);

Color normalAreaColor() =>
    colorThemeList[ColorThemeSeletion.selectColorThemeNotifier.value.index][0].withAlpha(700);

Color lightAreaColor() =>
    colorThemeList[ColorThemeSeletion.selectColorThemeNotifier.value.index][0].withAlpha(100);

Color maxLightAreaColor() =>
    colorThemeList[ColorThemeSeletion.selectColorThemeNotifier.value.index][0].withAlpha(300);

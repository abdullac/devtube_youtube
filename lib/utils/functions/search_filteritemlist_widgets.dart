import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:devtube_sample/utils/functions/set_app_colors.dart';
import 'package:flutter/material.dart';

List<Widget> filterItemList(
  List<String> titlesList,
  ValueNotifier<List<String>> filterItemSelectNotifier,
) {
  List<Widget> filterItemListTemp = [];
  for (var element in titlesList) {
    filterItemListTemp.add(
      ValueListenableBuilder(
          valueListenable: filterItemSelectNotifier,
          builder: (context, NewValue, _) {
            bool isContains = NewValue.contains(element);
            return InkWell(
              onTap: () {
                /// filterItem onTap
                isContains == true
                    ? filterItemSelectNotifier.value.remove(element)
                    : filterItemSelectNotifier.value.add(element);
                filterItemSelectNotifier.notifyListeners();
                print(filterItemSelectedList);
              },
              child: Container(
                color:
                    isContains == true ? lightAreaColor() : maxLightAreaColor(),
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(2),
                child: Center(
                  child: Text(element),
                ),
              ),
            );
          }),
    );
  }
  return filterItemListTemp;
}
import 'package:devtube_sample/ui/pages/search_results_page/page_search_results.dart';
import 'package:devtube_sample/utils/constants/proiders.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

void searhButtonPressed(BuildContext context) {
  printing("search button bressed");
  callSearch(context);
  PageSearchResults.filterWidgetNotifier.value = true;
}

filterButtonPressed(BuildContext context) {
   PageSearchResults.filterWidgetNotifier.value =
      PageSearchResults.filterWidgetNotifier.value == true ? false : true;
  PageSearchResults.filterWidgetNotifier.notifyListeners();
  printing("filter button bressed");
}

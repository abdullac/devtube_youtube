import 'package:devtube_sample/ui/pages/search_results_page/page_search_results.dart';
import 'package:flutter/material.dart';

searchButtonPressed(BuildContext context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: ((context) => const PageSearchResults())));
}
import 'package:devtube_sample/ui/pages/search_results_page/page_search_results.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:devtube_sample/utils/functions/create_search_prioritylist.dart';
import 'package:devtube_sample/utils/functions/search_filteritemlist_widgets.dart';
import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Column(
            ///  filter listview sections by type
        children: [
          Expanded(
            /// priority listview
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children:
                  filterItemList(priorityList(), filterItemSelectNotifier),
            ),
          ),
          /// tools names listview
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children:
                  filterItemList(toolsNamesList, filterItemSelectNotifier),
            ),
          ),
          /// product names listview
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children:
                  filterItemList(productsNamesList, filterItemSelectNotifier),
            ),
          ),
        ],
      ),
    );
  }
}

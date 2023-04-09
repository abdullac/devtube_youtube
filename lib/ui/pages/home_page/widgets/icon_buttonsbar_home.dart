import 'package:devtube_sample/ui/pages/search_results_page/page_search_results.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

class IconButtonsBarHome extends StatelessWidget {
  const IconButtonsBarHome({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        // padding: EdgeInsets.only(top: size.height * 27 / 100),
        padding: EdgeInsets.only(top: size.height * 0 / 100),
        child: IconButtonsBar(
          height: 60,
          width: size.width,
          iconButtonsBarType: IconButtonsBarType.utilButtons,
          searchButtonPressed: null,
          // earchButtonPressedHome(context),
          filterButtonPressed: () => filterButtonPressedHome("filter"),
          // voleumButtonPressed: () => iconButtonPresedHome("voleum"),
          // addlistButtonPressed: () => iconButtonPresedHome("addlist"),
          // watchedcountButtonPressed: () => iconButtonPresedHome("watchedcount"),
          // commentButtonPressed: () => iconButtonPresedHome("comment"),
        ),
      ),
    );
  }
}



filterButtonPressedHome(String printWord) {
  printing(printWord);
}

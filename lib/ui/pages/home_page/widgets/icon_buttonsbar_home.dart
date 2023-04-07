import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
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
        padding: EdgeInsets.only(top: size.height * 27 / 100),
        child: IconButtonsBar(
          height: 60,
          width: double.infinity,
          searchButtonPressed: () => iconButtonPresedHome("search"),
          filterButtonPressed: () => iconButtonPresedHome("filter"),
          voleumButtonPressed: () => iconButtonPresedHome("voleum"),
          addlistButtonPressed: () => iconButtonPresedHome("addlist"),
          watchedcountButtonPressed: () => iconButtonPresedHome("watchedcount"),
          commentButtonPressed: () => iconButtonPresedHome("comment"),
        ),
      ),
    );
  }
}

iconButtonPresedHome(String printWord) {
  printing(printWord);
}

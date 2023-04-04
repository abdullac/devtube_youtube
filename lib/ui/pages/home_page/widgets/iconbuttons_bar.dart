import 'package:devtube_sample/ui/pages/home_page/widgets/search_filter_buttons.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_based_iconbuttons.dart';
import 'package:flutter/material.dart';

class IconButtonsBar extends StatelessWidget {
  const IconButtonsBar({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: height * 30 / 100),
        child: Container(
          height: height * 10 / 100,
          width: width,
          decoration: BoxDecoration(
            color: Colors.cyan.withOpacity(0.5),
            borderRadius:
                const BorderRadius.all(Radius.circular(5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SearchAndFilterButtons(),
              ShortsBasedIconbuttons()
            ],
          ),
        ),
      ),
    );
  }
}

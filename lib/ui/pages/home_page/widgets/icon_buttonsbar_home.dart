import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
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
        padding: EdgeInsets.only(top: size.height * 0 / 100),
        child: IconButtonsBar(
          height: 60,
          width: size.width,
          iconButtonsBarType: IconButtonsBarType.utilButtons,
          searchButtonPressed: null,
        ),
      ),
    );
  }
}

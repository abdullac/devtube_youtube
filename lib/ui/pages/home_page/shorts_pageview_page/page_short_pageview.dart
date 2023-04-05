import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:flutter/material.dart';

class PageShortPageview extends StatelessWidget {
  const PageShortPageview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
      child: PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => const PageViewItemWidget(),
      ),
    );
  }
}

class PageViewItemWidget extends StatelessWidget {
  const PageViewItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Placeholder(),
        Align(
          alignment: Alignment.bottomCenter,
          child: IconButtonsBar(
            height: 60,
            width: double.infinity,
            iconButtonsBarType: IconButtonsBarType.actionButtons
          ),
        )
      ],
    );
  }
}

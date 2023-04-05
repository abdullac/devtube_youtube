import 'package:devtube_sample/ui/pages/home_page/widgets/search_filter_buttons.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_based_iconbuttons.dart';
import 'package:flutter/material.dart';

// class IconButtonsBar extends StatelessWidget {
//   const IconButtonsBar({
//     super.key,
//     required this.height,
//     required this.width,
//   });

//   final double height;
//   final double width;

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: Padding(
//         padding: EdgeInsets.only(top: height * 26 / 100),
//         child: Container(
//           height: height * 10 / 100,
//           width: width,
//           decoration: BoxDecoration(
//             color: Colors.cyan.withOpacity(0.5),
//             borderRadius:
//                 const BorderRadius.all(Radius.circular(5)),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: const [
//               SearchAndFilterButtons(),
//               ShortsBasedIconbuttons()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

enum IconButtonsBarType {
  actionButtons,
  utilButtons,
  actionAndIconButtons,
}

class IconButtonsBar extends StatelessWidget {
  final IconButtonsBarType? iconButtonsBarType;
  const IconButtonsBar({
    super.key,
    required this.height,
    required this.width,
    this.iconButtonsBarType,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.cyan.withOpacity(0.5),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: iconButtonsBarType == null ||
                iconButtonsBarType == IconButtonsBarType.actionAndIconButtons
            ? [
                const SearchAndFilterButtons(),
                const ShortsBasedIconbuttons(),
              ]
            : iconButtonsBarType == IconButtonsBarType.actionButtons
                ? [
                    const SizedBox(),
                    const ShortsBasedIconbuttons(),
                  ]
                : iconButtonsBarType == IconButtonsBarType.utilButtons
                    ? [
                        const SearchAndFilterButtons(),
                        const SizedBox(),
                      ]
                    : [],
      ),
    );
  }
}

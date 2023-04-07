import 'package:devtube_sample/ui/pages/home_page/widgets/search_filter_buttons.dart';
import 'package:devtube_sample/ui/pages/home_page/widgets/shorts_based_iconbuttons.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
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

class IconButtonsBar extends StatelessWidget {
  final IconButtonsBarType? iconButtonsBarType;
  final double height;
  final double width;
  final Color? backgroundColor;
  final void Function()? searchButtonPressed;
  final void Function()? filterButtonPressed;
  final void Function()? voleumButtonPressed;
  final void Function()? addlistButtonPressed;
  final void Function()? watchedcountButtonPressed;
  final void Function()? commentButtonPressed;
  const IconButtonsBar({
    super.key,
    required this.height,
    required this.width,
    this.iconButtonsBarType,
    this.searchButtonPressed,
    this.filterButtonPressed,
    this.voleumButtonPressed,
    this.addlistButtonPressed,
    this.watchedcountButtonPressed,
    this.commentButtonPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? Colors.cyan.withOpacity(0.5)
            : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: iconButtonsBarType == null ||
                iconButtonsBarType == IconButtonsBarType.actionAndIconButtons
            ? [
                SearchAndFilterButtons(
                    searhButtonPressed: searchButtonPressed,
                    filterButtonPressed: filterButtonPressed),
                ShortsBasedIconbuttons(
                  voleumButtonPressed: voleumButtonPressed,
                  addlistButtonPressed: addlistButtonPressed,
                  watchedcountButtonPressed: watchedcountButtonPressed,
                  commentButtonPressed: commentButtonPressed,
                ),
              ]
            : iconButtonsBarType == IconButtonsBarType.actionButtons
                ? [
                    const SizedBox(),
                    ShortsBasedIconbuttons(
                      voleumButtonPressed: voleumButtonPressed,
                      addlistButtonPressed: addlistButtonPressed,
                      watchedcountButtonPressed: watchedcountButtonPressed,
                      commentButtonPressed: commentButtonPressed,
                    ),
                  ]
                : iconButtonsBarType == IconButtonsBarType.utilButtons
                    ? [
                        SearchAndFilterButtons(
                            searhButtonPressed: searchButtonPressed,
                            filterButtonPressed: filterButtonPressed),
                        const SizedBox(),
                      ]
                    : [],
      ),
    );
  }
}

// searchButtonPressed() {
//   printing("search button bressed");
// }

// filterButtonPressed() {
//   printing("filter button bressed");
// }

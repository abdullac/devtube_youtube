import 'package:devtube_sample/ui/shared/widgets/util_buttons.dart';
import 'package:devtube_sample/ui/shared/widgets/action_iconbuttons.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class IconButtonsBar extends StatelessWidget {
  final IconButtonsBarType? iconButtonsBarType;
  final double height;
  final double width;
  final Color? backgroundColor;
  final bool? spaceMin;
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
    this.spaceMin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: spaceMin == true ? MainAxisSize.min : MainAxisSize.max,
        children: iconButtonsBarType == null ||
                iconButtonsBarType == IconButtonsBarType.actionAndIconButtons
            ? [
                UtilIconButtons(
                    searhButtonPressed: searchButtonPressed,
                    filterButtonPressed: filterButtonPressed),
                ActionIconbuttons(
                  voleumButtonPressed: voleumButtonPressed,
                  addlistButtonPressed: addlistButtonPressed,
                  watchedcountButtonPressed: watchedcountButtonPressed,
                  commentButtonPressed: commentButtonPressed,
                ),
              ]
            : iconButtonsBarType == IconButtonsBarType.actionButtons
                ? [
                    const SizedBox(),
                    ActionIconbuttons(
                      voleumButtonPressed: voleumButtonPressed,
                      addlistButtonPressed: addlistButtonPressed,
                      watchedcountButtonPressed: watchedcountButtonPressed,
                      commentButtonPressed: commentButtonPressed,
                    ),
                  ]
                : iconButtonsBarType == IconButtonsBarType.utilButtons
                    ? [
                        UtilIconButtons(
                            searhButtonPressed: searchButtonPressed,
                            filterButtonPressed: filterButtonPressed),
                        const SizedBox(),
                      ]
                    : [],
      ),
    );
  }
}

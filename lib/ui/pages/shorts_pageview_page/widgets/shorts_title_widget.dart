
import 'package:flutter/material.dart';

class ShortsTitleWidget extends StatelessWidget {
  const ShortsTitleWidget({
    super.key,
    required this.blocState,
    required this.index,
  });

  final dynamic blocState;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 100,
        width: double.infinity,
        color: Colors.indigoAccent,
        child: Text(blocState.shortsDataList[index].title),
      ),
    );
  }
}

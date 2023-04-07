import 'package:flutter/material.dart';

/// SearchShortsResultItem
class SearchShortsResultItem extends StatelessWidget {
  final int shortsListviewIndex;
  const SearchShortsResultItem({
    super.key,
    required this.shortsListviewIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      color: Colors.red,
    );
  }
}

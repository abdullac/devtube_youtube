import 'package:flutter/material.dart';

class ShortsThumbnailContainer extends StatelessWidget {
  const ShortsThumbnailContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50,top: 5, left: 5, right: 5),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(image: NetworkImage("https://i.ytimg.com/vi/Y0cBiGUuB1Y/frame0.jpg")
        ,fit: BoxFit.cover)
      ),
    );
  }
}

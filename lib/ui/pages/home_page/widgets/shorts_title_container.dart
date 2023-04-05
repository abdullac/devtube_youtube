import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShortsTitleContainer extends StatelessWidget {
  const ShortsTitleContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height * 12 / 100,
        width: width,
        color: Colors.purple.withOpacity(0.5),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Text(
              state.shortsData?.title??"No shorts title provided",
              overflow: TextOverflow.fade,
            );
          },
        ),
      ),
    );
  }
}

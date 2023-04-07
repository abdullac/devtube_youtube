import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShortsTitleContainer extends StatelessWidget {
  const ShortsTitleContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: size.height * 12 / 100,
        width: size.width,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                // state.shortsData?.title ?? "No shorts title provided",
                "ffds fsf sfsd sdfsdfsdf ffwer fsdfsdf sfsdffewf fsfffds fsf sfsd sdfsdfsdf ffwer fsdfsdf sfsdffewf fsf ",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  shadows: const [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 1,
                    )
                  ],
                ),
                overflow: TextOverflow.fade,
              ),
            );
          },
        ),
      ),
    );
  }
}

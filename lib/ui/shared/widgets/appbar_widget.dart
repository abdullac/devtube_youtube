import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: const Text("DevTube"),
      actions: [
        IconButtonWidget(
          icon: Icons.settings,
          iconButtonPressed: () {
            // voleum icon button
            printing("settings button presed");
          },
        ),
      ],
    );
  }
}





//////////////////
///
///
// import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
// import 'package:flutter/material.dart';

// class VideoPlayIconButton extends StatelessWidget {
//   final void Function() iconButtonPressed;
//   const VideoPlayIconButton({
//     super.key, required this.iconButtonPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: IconButtonWidget(
//         icon: Icons.play_circle_outline_sharp,
//         iconButtonPressed: () {
//           // play button pressed
//           iconButtonPressed();
//         },
//       ),
//     );
//   }
// }



/////////////////////////
///
///
// import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
// import 'package:flutter/material.dart';

// class AppBarWidget extends StatelessWidget {
//   const AppBarWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       shadowColor: Colors.transparent,
//       title: const Text("DevTube"),
//       actions: [
//         IconButtonWidget(
//           icon: Icons.settings,
//           iconButtonPressed: () {
//             // voleum icon button
//           },
//         ),
//       ],
//     );
//   }
// }
////////////////////////////////////
///
///import 'package:devtube_sample/main.dart';
// import 'package:devtube_sample/ui/shared/widgets/video_play_iconbutton.dart';
// import 'package:flutter/material.dart';

// // class VideoThumbnailContainer extends StatelessWidget {
// //   final double width;
// //   final double height;
// //   final ScreenPage screenPage;
// //   final dynamic Function(
// //     Widget Function(
// //             {required dynamic blocState,
// //             required double width,
// //             required double height,
// //             required String thumbnailUrl})
// //         widget,
// //   ) bloc;
// //   const VideoThumbnailContainer({
// //     super.key,
// //     required this.width,
// //     required this.height,
// //     required this.screenPage,
// //     required this.bloc,
// //   });

// //   /// build function
// //   @override
// //   Widget build(BuildContext context) {
// //     return bloc((
// //         {required dynamic blocState,
// //         required double width,
// //         required double height,
// //         required String thumbnailUrl}) {
// //       return widget(
// //         blocState: blocState,
// //         width: width,
// //         height: height,
// //         thumbnailUrl: thumbnailUrl,
// //       );
// //     });
// //   }
// // }

// // Widget widget({
// //   required dynamic blocState,
// //   required double width,
// //   required double height,
// //   required String thumbnailUrl,
// // }) {
// //   return blocState.isLoading
// //       ? const Center(
// //           child: CircularProgressIndicator(
// //             strokeWidth: 2,
// //           ),
// //         )
// //       : Container(
// //           width: width,
// //           height: height * 26 / 100,
// //           // margin: const EdgeInsets.symmetric(horizontal: 10),
// //           decoration: BoxDecoration(
// //             color: Colors.amber,
// //             borderRadius: const BorderRadius.only(
// //               bottomLeft: Radius.circular(5),
// //               bottomRight: Radius.circular(5),
// //             ),
// //             image: DecorationImage(
// //                 image: NetworkImage(
// //                   // imageUrl,
// //                   thumbnailUrl,
// //                 ),
// //                 fit: BoxFit.cover),
// //           ),
// //           child: const VideoPlayIconButton(),
// //         );
// // }

// class VideoThumbnailContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final dynamic blocState;
//   final String thumbnailUrl;
//   final void Function() iconButtonPressed;

//   const VideoThumbnailContainer({
//     super.key,
//     required this.width,
//     required this.height,
//     required this.blocState,
//     required this.thumbnailUrl,
//     required this.iconButtonPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return blocState.isLoading
//         ? const Center(
//             child: CircularProgressIndicator(
//               strokeWidth: 2,
//             ),
//           )
//         : Container(
//             width: width,
//             height: height * 26 / 100,
//             // margin: const EdgeInsets.symmetric(horizontal: 10),
//             decoration: BoxDecoration(
//               color: Colors.amber,
//               borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(5),
//                 bottomRight: Radius.circular(5),
//               ),
//               image: DecorationImage(
//                   image: NetworkImage(
//                     // imageUrl,
//                     thumbnailUrl,
//                   ),
//                   fit: BoxFit.cover),
//             ),
//             child: VideoPlayIconButton(
//               iconButtonPressed: () {
//                 // play button pressed
//                 iconButtonPressed();
//               },
//             ),
//           );
//   }
// }












// ////////////////////////////////////////

// // Positioned(
// //         top: -5,
// //         right: 10,
// //         left: 10,
// //         child: state.isLoading
// //             ? const Center(
// //                 child: CircularProgressIndicator(
// //                   strokeWidth: 2,
// //                 ),
// //               )
// //             : state.videosData == null
// //                 ? const Center(
// //                     child: Text("Could'nt get any Shorts data"),
// //                   )
// //                 : Container(
// //                     width: width,
// //                     height: height * 26 / 100,
// //                     // margin: const EdgeInsets.symmetric(horizontal: 10),
// //                     decoration: BoxDecoration(
// //                       color: Colors.amber,
// //                       borderRadius: const BorderRadius.only(
// //                         bottomLeft: Radius.circular(5),
// //                         bottomRight: Radius.circular(5),
// //                       ),
// //                       image: DecorationImage(
// //                           image: NetworkImage(
// //                             // imageUrl,
// //                             thumbnailUrl,
// //                           ),
// //                           fit: BoxFit.cover),
// //                     ),
// //                     child: const VideoPlayIconButton(),
// //                   ),
// //       );

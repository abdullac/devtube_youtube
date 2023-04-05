import 'dart:math';

import 'package:devtube_sample/core/services/links/uri.dart';
import 'package:devtube_sample/main.dart';

Future<void> setUrlChannelId() async {
  for (int index = 0; index < 4; index++) {
    print(channelIdList.length);
    if (channelIdList.length > 1) {
      break;
    } else if (index == 3 && channelIdList.length <= 1) {
      channelIdList.add("UCX6OQ3DkcsbYNE6H8uQQuVA");
    }
    await Future.delayed(const Duration(milliseconds: 800));
  }
  Url.channelId = channelIdList[Random().nextInt(channelIdList.length)];
}

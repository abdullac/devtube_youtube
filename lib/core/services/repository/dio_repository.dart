import 'package:devtube_sample/core/services/facades/dio_facade.dart';
import 'package:devtube_sample/core/services/links/uri.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DioFacade)
class DioRepository implements DioFacade {
  @override
  dioGet() async {
  final responsse = await Dio(
    BaseOptions(
      baseUrl: Api.baseUrl + Api.searchByCategoryIdEntPoint,
    ),
  ).get("");
  print(responsse.data);
}

}

// dioGet() async {
//   final responsse = await Dio(
//     BaseOptions(
//       baseUrl: Api.baseUrl + Api.searchByCategoryIdEntPoint,
//     ),
//   ).get("");
//   print(responsse.data);
// }

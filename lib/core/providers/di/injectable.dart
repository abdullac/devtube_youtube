
import 'injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// final getIt = GetIt.instance;

// @InjectableInit()
// Future<void> configureInjection()async {
  
//   getIt.registerSingleton(getIt);
//   getIt.init(environment:Environment.prod);
// }


final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjetion() async {
  // init(getIt, Environment.prod);
  getIt.registerSingleton(getIt);
  getIt.init(environment: Environment.prod);
}


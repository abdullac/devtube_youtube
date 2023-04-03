import 'package:devtube_sample/core/providers/bloc/bloc/api_bloc_bloc.dart';
import 'package:devtube_sample/core/providers/di/injectable.dart';
import 'package:devtube_sample/core/services/facades/dio_facade.dart';
import 'package:devtube_sample/core/services/repository/dio_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjetion();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ApiBlocBloc>())
      ],
      child: const MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: MainPage(),
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // dioGet();
    // GetApi();
    print("qqqq");
    // BlocProvider.of<ApiBlocBloc>(context).add(const ApiGet());
    getIt<GetApi>();
    print("wwwww");
    return const Placeholder();
  }
}

@injectable
class GetApi {
  final DioFacade dioFacade;
  GetApi(this.dioFacade){
    dioFacade.dioGet();
  }
}
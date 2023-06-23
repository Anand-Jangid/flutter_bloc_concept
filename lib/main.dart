import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concept/business_logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc_concept/business_logic/cubit/internet_cubit.dart';
import 'package:flutter_bloc_concept/presentation/router/app_router.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter(), connectivity: Connectivity(),));
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.appRouter, required this.connectivity});

  final AppRouter appRouter;
  final Connectivity connectivity;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(connectivity: connectivity)
        ),
        BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
      ],
      child: MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}

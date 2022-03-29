import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_suite/blocs/bottom_nav/bottom_nav_bloc.dart';
import 'package:work_suite/util/app_colors.dart';
import 'screens/screens_util.dart';

void main() {
  runApp(BlocProvider<BottomNavigationBloc>(
    create: (context){
    return BottomNavigationBloc();
  },
  child: WorkSuiteApp(),
  ));
}

class WorkSuiteApp extends StatelessWidget {
  WorkSuiteApp({Key? key}) : super(key: key);

  final routeDelegate = BeamerDelegate(
      initialPath: '/',
      locationBuilder: SimpleLocationBuilder(routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => LogInScreen(),
        '/mainDashboard': (context) => DashBoard(),
        '/mainDashboard/profile': (context) => ProfileScreen()
      }));

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: lightThemeData,
      debugShowCheckedModeBanner: false,
      routerDelegate: routeDelegate,
      routeInformationParser: BeamerParser(),
    );
  }
}


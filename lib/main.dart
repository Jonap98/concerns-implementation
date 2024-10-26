import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:concerns_implementation/src/config/router/app_router.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await dotenv.load( fileName: '.env' );

  runApp(const MyApp());
} 


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routerConfig: appRouter,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
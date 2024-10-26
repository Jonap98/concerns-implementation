
import 'package:concerns_implementation/src/presentation/auth/screens/login_screen.dart';
import 'package:concerns_implementation/src/presentation/auth/screens/register_screen.dart';
import 'package:concerns_implementation/src/presentation/home/screens/homescreen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),

    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
import 'package:g4/features/auth/ui/login.screen.dart';
import 'package:g4/features/auth/ui/register.screen.dart';
import 'package:g4/features/splashScreen/ui/splash.screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: "splash",
      builder: (context, state) => const Splash1(),
    ),
    GoRoute(
      path: '/register',
      name: "register",
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/login',
      name: "login",
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);

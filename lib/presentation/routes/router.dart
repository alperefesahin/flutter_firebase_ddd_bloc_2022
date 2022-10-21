import 'package:auto_route/auto_route.dart';
import 'package:flutter_firebase_ddd_bloc/presentation/sign_in/sign_in_page.dart';
import 'package:flutter_firebase_ddd_bloc/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
  ],
)
class $AppRouter {}

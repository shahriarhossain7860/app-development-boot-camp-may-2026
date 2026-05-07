import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:mexpense/features/calculationItems/presentation/add_expense_screen.dart';
import 'package:mexpense/navigation_screen.dart';

import '../loading_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String loadingScreen = '/Loading';
  static const String onboardingScreen = '/onboardingScreen';
  static const String createTitration = '/createTitration';
  static const String signUp = '/signUp';
  static const String login = '/login';
  static const String forgotPass = '/forgotPass';
  static const String verifyEmail = '/verifyEmail';
  static const String updatePassword = '/updatePassword';
  static const String congratulations = '/congratulations';
  static const String signUpVerifyEmail = '/signUpVerifyEmail';
  static const String navigation = '/navigation';
  static const String addExpense = '/addExpense';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loadingScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const Loading(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const Loading());

      case Routes.navigation:
        Map args = settings.arguments as Map;
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ScreenTitle(
                  widget: NavigationScreen(pageNum: args['pageNum']),
                ),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) =>
                    NavigationScreen(pageNum: args['pageNum']),
              );

      case Routes.addExpense:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const AddExpenseScreen(),
                settings: settings,
              )
            : CupertinoPageRoute(
                builder: (context) => const AddExpenseScreen(),
              );

      // case Routes.login:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const LoginScreen(),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const LoginScreen());

      // case Routes.forgotPass:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const ForgotPasswordScreen(),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const ForgotPasswordScreen());

      // case Routes.verifyEmail:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const VerifyEmailScreen(),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const VerifyEmailScreen());

      // case Routes.updatePassword:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const UpdatePasswordScreen(),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const UpdatePasswordScreen());

      // case Routes.congratulations:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const CongratulationScreen(),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const CongratulationScreen());

      // case Routes.signUpVerifyEmail:
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: const SignUpVerifyEmailScreen(),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => const SignUpVerifyEmailScreen());

      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
    : super(
        settings: settings,
        reverseTransitionDuration: const Duration(milliseconds: 1),
        pageBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return widget;
            },
        transitionDuration: const Duration(milliseconds: 1),
        transitionsBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              return FadeTransition(
                opacity: CurvedAnimation(parent: animation, curve: Curves.ease),
                child: child,
              );
            },
      );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: widget,
    );
  }
}

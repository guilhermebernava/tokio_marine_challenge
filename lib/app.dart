import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokio_marine/providers/auth.dart';
import 'package:tokio_marine/screens/home/view/home.dart';
import 'package:tokio_marine/screens/login/view/login.dart';
import 'package:tokio_marine/themes/app_colors.dart';
import 'package:tokio_marine/screens/web_view_app.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Auth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.green,
          scaffoldBackgroundColor: AppColors.black,
          appBarTheme: const AppBarTheme(
            color: AppColors.shadow,
            centerTitle: true,
          ),
        ),
        initialRoute: LoginScreen.route,
        routes: {
          LoginScreen.route: (context) => const LoginScreen(),
          HomeScreen.route: (context) => const HomeScreen(),
          WebViewApp.route: (context) => const WebViewApp(),
        },
      ),
    );
  }
}

import 'package:betterff_desktop/pages/home.page.dart';
import 'package:betterff_desktop/pages/login.page.dart';
import 'package:betterff_desktop/pages/registration.dart';
import 'package:betterff_desktop/patterns/layout.pattern.dart';
import 'package:betterff_desktop/providers/theme.provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Map<String, WidgetBuilder> routers = {
    '/': (context) => const Layout(child: HomePage()),
    '/login': (context) => const LoginPage(),
    '/registration': (context) => const RegistrationPage(),
  };

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: ThemeProviderApp.instance,
        builder: (context, child) {
          return MaterialApp(
            title: 'Better Finacial Flow',
            theme: ThemeData(
              brightness: ThemeProviderApp.instance.isDarkMode
                  ? Brightness.dark
                  : Brightness.light,
              primarySwatch: Colors.blue,
              useMaterial3: false,
            ),
            initialRoute: '/login',
            routes: routers,
          );
        });
  }
}

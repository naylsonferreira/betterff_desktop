import 'package:betterff_desktop/pages/home.page.dart';
import 'package:betterff_desktop/pages/login.page.dart';
import 'package:betterff_desktop/pages/registration.dart';
import 'package:flutter/material.dart';

class Page {
  final int index;
  final String label;
  final String path;
  final Widget component;
  IconData icon = Icons.home;
  String subtitle = '';

  Page(
      {required this.index,
      required this.label,
      required this.path,
      required this.component,
      required this.icon,
      required this.subtitle});
}

class LayoutProvider extends ChangeNotifier {
  List<Page> pages = [
    Page(
        index: 0,
        label: 'Home',
        path: '/',
        component: const HomePage(),
        icon: Icons.home,
        subtitle: 'ir para a página inicial'),
    Page(
        index: 1,
        label: 'Login',
        path: '/login',
        component: const LoginPage(),
        icon: Icons.login,
        subtitle: 'ir para a página de login'),
    Page(
        index: 2,
        label: 'Registre-se',
        path: '/registration',
        component: const RegistrationPage(),
        icon: Icons.person_add,
        subtitle: 'ir para a página de cadastro'),
  ];

  int currentPage = 0;

  setCurrentPage(int page) {
    currentPage = page;
    notifyListeners();
  }

  static LayoutProvider instance = LayoutProvider();
}

import 'package:betterff_desktop/patterns/bottom_bar.pattern.dart';
import 'package:betterff_desktop/patterns/drawer.pattern.dart';
import 'package:betterff_desktop/providers/layout.provider.dart';
import 'package:betterff_desktop/providers/theme.provider.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  final Widget child;
  const Layout({super.key, required this.child});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: LayoutProvider.instance,
      builder: (context, child) {
      return Scaffold( 
          drawer: const DrawerApp(),
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            title: const Text(
              "Better Finacial Flow",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                color: Colors.white,
                icon: Icon(ThemeProviderApp.instance.isDarkMode
                    ? Icons.dark_mode
                    : Icons.light_mode),
                onPressed: () {
                  ThemeProviderApp.instance.toggleTheme();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              )
            ],
          ),
          body: Center(
            child: widget.child,
          ),
          bottomNavigationBar: const BottomBarApp()
          );
      }
    );
  }
}

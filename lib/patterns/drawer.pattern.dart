import 'package:betterff_desktop/providers/layout.provider.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header', style: TextStyle(color: Colors.white)),
          ),
          ...LayoutProvider.instance.pages.map((page) {
            bool isSelected = LayoutProvider.instance.currentPage != page.index;
            return ListTile(
              leading: Icon(page.icon,
                  color: isSelected ? Colors.black : Colors.blue, size: 28),
              enabled: isSelected,
              title: Text(
                page.label,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              subtitle: Text(page.subtitle),
              onTap: () {
                LayoutProvider.instance.setCurrentPage(page.index);
                Navigator.pushReplacementNamed(context, page.path);
              },
            );
          }),
        ],
      ),
    );
  }
}

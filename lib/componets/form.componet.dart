import 'package:flutter/material.dart';

class FormApp extends StatefulWidget {
  final List<Widget> children;
  final double? width;
  final double? height;
  const FormApp({super.key, required this.children, this.width, this.height});

  @override
  State<FormApp> createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  getWidth(constraints) {
    double maxWidth = widget.width ?? 500;
    if (constraints.maxWidth > maxWidth) {
      return maxWidth;
    } else {
      return constraints.maxWidth - 20;
    }
  }

  getHeight(constraints) {
    double maxHeight = widget.height ?? 300;
    if (constraints.maxHeight > maxHeight) {
      return maxHeight;
    } else {
      return constraints.maxHeight - 20;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: getWidth(constraints),
        height: getHeight(constraints),
        child: Wrap(
          spacing: 0.0,
          runSpacing: 0.0,
          children: widget.children,
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';

class InputApp extends StatefulWidget {
  final TextInputType textInputType;
  final String placeholder;
  final IconData icon;
  final double? minWidth;
  const InputApp(
      {super.key,
      required this.placeholder,
      required this.textInputType,
      this.minWidth,
      required this.icon});

  @override
  State<InputApp> createState() => _InputAppState();
}

class _InputAppState extends State<InputApp> {
  getWidth(double width) {
    double minWidth = (widget.minWidth ?? 100.0) / 100.0;
    return (width * minWidth) - 16;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            width: getWidth(constraints.maxWidth),
            child: TextField(
              keyboardType: widget.textInputType,
              obscureText:
                  widget.textInputType == TextInputType.visiblePassword,
              decoration: InputDecoration(
                prefixIcon: Icon(widget.icon, color: Colors.blueGrey),
                hintText: widget.placeholder,
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.blue[20],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              style: const TextStyle(fontSize: 16.0),
            )),
      );
    });
  }
}

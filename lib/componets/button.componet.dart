import 'package:flutter/material.dart';

enum ButtonAppStyle { primary, secondary, tertiary }

class ButtonApp extends StatefulWidget {
  final String text;
  final Color color;
  final IconData? icon;
  final ButtonAppStyle style;

  final void Function() onPressed;

  const ButtonApp(
      {super.key,
      required this.text,
      required this.color,
      this.icon,
      required this.style,
      required this.onPressed});

  @override
  State<ButtonApp> createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    switch (widget.style) {
      case ButtonAppStyle.primary:
        return TextButton.icon(
          onPressed: widget.onPressed,
          icon: widget.icon != null
              ? Icon(widget.icon, color: Colors.white)
              : const SizedBox(),
          label: Text(
            widget.text,
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.color,
            foregroundColor: Colors.white,
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        );

      case ButtonAppStyle.secondary:
        return OutlinedButton.icon(
          onPressed: widget.onPressed,
          icon: widget.icon != null
              ? Icon(widget.icon, color: Colors.blue)
              : const SizedBox(),
          label: Text(
            widget.text,
            style: const TextStyle(fontSize: 16.0, color: Colors.blue),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: widget.color, width: 2.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        );

      case ButtonAppStyle.tertiary:
        return TextButton.icon(
          onPressed: widget.onPressed,
          icon: widget.icon != null
              ? Icon(widget.icon, color: Colors.blue)
              : const SizedBox(),
          label: Text(
            widget.text,
            style: const TextStyle(fontSize: 16.0, color: Colors.blue),
          ),
          style: TextButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        );
    }
  }
}

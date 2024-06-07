import 'package:flutter/material.dart';


class BaseContainer extends StatelessWidget {
  const BaseContainer(
      {super.key,
      required this.child,
      this.width,
      this.margin,
      this.padding = const EdgeInsets.only(left: 12),
      });

  final double? width;
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 17).copyWith(bottom: 17),
      padding: padding,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 197, 188, 188),
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final double width;
  final double height;
  final double size;
  final Color color;
  final bool hasGradient;
  final IconData icon;

  // ignore: use_super_parameters
  const ChoiceButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.size,
      required this.color,
      required this.hasGradient,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          gradient: hasGradient
              ? const LinearGradient(
                  colors: [
                    Color.fromRGBO(187, 37, 74, 1),
                    Color.fromRGBO(187, 37, 74, 1),
                  ],
                )
              : const LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white,
                  ],
                ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(50),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(3, 3),
            ),
          ]),
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
}

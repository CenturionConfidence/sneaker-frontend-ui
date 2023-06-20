import 'package:ecommerce_design/utils/constants.dart';
import 'package:ecommerce_design/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Text appText({required String text, required TextStyle style}) {
  return Text(
    text,
    style: style,
  );
}

Widget tag({required String text}) {
  return Container(
    padding: const EdgeInsets.all(2),
    width: 30,
    height: 25,
    decoration: BoxDecoration(
      color: secondaryColor,
      borderRadius: BorderRadius.circular(2),
    ),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
    ),
  );
}

Widget container(dynamic icons) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(60),
    ),
    child: SvgPicture.asset(
      icons,
      width: 8,
    ),
  );
}

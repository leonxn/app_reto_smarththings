import 'package:flutter/material.dart';
import 'package:reto_smarththings/constans/constans.dart';

class TextDetailItem extends StatelessWidget {
  String opcion;
  String optValue;

  TextDetailItem({
    required this.opcion,
    required this.optValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$opcion:",
          style: subtitle2,
        ),
        Text(
          optValue,
          style: subtitle,
        ),
      ],
    );
  }
}

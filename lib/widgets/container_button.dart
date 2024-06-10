import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final String? containtText;
  final bool isIcon;
  final IconData? containtIcon;
  ContainerButton({
    this.containtText,
    required this.isIcon,
    this.containtIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(16),
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(-2, 6),
            blurRadius: 5,
          ),
        ],
      ),
      child: isIcon == false
          ? Text(
              containtText ?? "",
              style: TextStyle(
                color: Color(0xff054a88),
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  containtIcon,
                  color: Color(0xff054a88),
                  size: 80,
                ),
                Text(
                  containtText ?? "",
                  style: TextStyle(
                    color: Color(0xff054a88),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
    );
  }
}

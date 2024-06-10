import 'package:flutter/material.dart';
import 'package:reto_smarththings/constans/constans.dart';

class ContainerAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 85,
      decoration: BoxDecoration(
        color: colorPrincipal,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Text(
        "Navicury",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }
}

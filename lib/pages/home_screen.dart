import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reto_smarththings/widgets/container_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xff054a88),
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
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14.0,
              top: 12.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Espacios",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ContainerButton(
                  containtText: "A",
                  isIcon: false,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14.0,
              top: 12.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Equipos Conectados",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // Número de columnas
              children: [
                ContainerButton(
                  containtIcon: Icons.live_tv_outlined,
                  containtText: "Tv Cuarto",
                  isIcon: true,
                ),
                ContainerButton(
                  containtIcon: Icons.kitchen_outlined,
                  containtText: "Refrigeradora",
                  isIcon: true,
                ),
                ContainerButton(
                  containtIcon: Icons.door_front_door_outlined,
                  containtText: "Puerta Sara",
                  isIcon: true,
                ),
                ContainerButton(
                  containtIcon: Icons.directions_car,
                  containtText: "Cochera",
                  isIcon: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

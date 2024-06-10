import 'package:flutter/material.dart';
import 'package:reto_smarththings/widgets/container_appbar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ContainerAppbar(),
        ],
      ),
    );
  }
}

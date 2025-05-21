import 'package:flutter/material.dart';

class Cameras extends StatefulWidget {
  const Cameras({super.key});
  @override
  State<Cameras> createState() => _InitialPageCameras();
}

class _InitialPageCameras extends State<Cameras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Cameras')));
  }
}

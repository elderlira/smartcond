import 'package:flutter/material.dart';
import 'package:smartcond/menu.dart';

class Cameras extends StatefulWidget {
  const Cameras({super.key});
  @override
  State<Cameras> createState() => _InitialPageCameras();
}

class _InitialPageCameras extends State<Cameras> {
  @override
  Widget build(BuildContext context) {
    return Menu(body: Text('tela inicial das cameras'));
  }
}

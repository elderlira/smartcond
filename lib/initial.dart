import 'package:flutter/material.dart';
import 'package:smartcond/menu.dart';

class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialPage();
}

class _InitialPage extends State<Initial> {
  @override
  Widget build(BuildContext context) {
    return Menu(body: Text('tela inicial'));
  }
}

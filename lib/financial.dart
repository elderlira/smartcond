import 'package:flutter/material.dart';
import 'package:smartcond/menu.dart';

class Financial extends StatefulWidget {
  const Financial({super.key});

  @override
  State<Financial> createState() => _InitialPageFinancial();
}

class _InitialPageFinancial extends State<Financial> {
  @override
  Widget build(BuildContext) {
    return Menu(body: Text('Tela inicial financeiro'));
  }
}

import 'package:flutter/material.dart';

class Financial extends StatefulWidget {
  const Financial({super.key});

  @override
  State<Financial> createState() => _InitialPageFinancial();
}

class _InitialPageFinancial extends State<Financial> {
  @override
  Widget build(BuildContext) {
    return Scaffold(appBar: AppBar(title: Text('Financeiro')));
  }
}

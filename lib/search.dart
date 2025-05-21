import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _InitialPageSearch();
}

class _InitialPageSearch extends State<Search> {
  @override
  Widget build(BuildContext) {
    return Scaffold(appBar: AppBar(title: Text('Consulta')));
  }
}

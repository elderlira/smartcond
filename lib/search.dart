import 'package:flutter/material.dart';
import 'package:smartcond/menu.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _InitialPageSearch();
}

class _InitialPageSearch extends State<Search> {
  @override
  Widget build(BuildContext) {
    return Menu(body: Text('tela inicial de consulta'));
  }
}

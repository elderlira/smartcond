import 'package:flutter/material.dart';

import 'cameras.dart';
import 'financial.dart';
import 'search.dart';

class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialPage();
}

class _InitialPage extends State<Initial> {
  List<Map<String, String>> menuItens = [
    {'icon': 'house_outlined', 'text': 'Home'},
    {'icon': 'video_camera_back_outlined', 'text': 'Cameras'},
    {'icon': 'monetization_on_outlined', 'text': 'Financeiro'},
    {'icon': 'search', 'text': 'Consulta'},
  ];

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'house_outlined':
        return Icons.house_outlined;
      case 'video_camera_back_outlined':
        return Icons.video_camera_back_outlined;
      case 'monetization_on_outlined':
        return Icons.monetization_on_outlined;
      case 'search':
        return Icons.search;
      default:
        return Icons.help_outline;
    }
  }

  void _navigate(String page) {
    Navigator.pop(context);
    switch (page) {
      case 'Home':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const Initial()),
        );
        break;
      case 'Cameras':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const Cameras()),
        );
        break;
      case 'Financeiro':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const Financial()),
        );
        break;
      case 'Consulta':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const Search()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SmartCond',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Row(
                children: [
                  Icon(Icons.supervised_user_circle_outlined),
                  Text('Nome do usuario'),
                ],
              ),
            ),
            ...menuItens.map((e) {
              return ListTile(
                leading: Icon(_getIconData(e['icon']!)),
                title: Text(e['text']!),
                onTap: () {
                  _navigate(e['text']!);
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

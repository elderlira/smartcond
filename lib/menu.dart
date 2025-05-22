import 'package:flutter/material.dart';
import 'package:smartcond/cameras.dart';
import 'package:smartcond/financial.dart';
import 'package:smartcond/initial.dart';
import 'package:smartcond/search.dart';

class Menu extends StatelessWidget {
  final Widget body;

  const Menu({super.key, required this.body});

  final List<Map<String, String>> menuItens = const [
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

  void _navigate(BuildContext context, String page) {
    Navigator.pop(context);
    Widget destination;

    switch (page) {
      case 'Home':
        destination = const Initial();
        break;
      case 'Cameras':
        destination = const Cameras();
        break;
      case 'Financeiro':
        destination = const Financial();
        break;
      case 'Consulta':
        destination = const Search();
        break;
      default:
        destination = const Initial();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => destination),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
                  Icon(
                    Icons.supervised_user_circle_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Nome do usuário',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            ...menuItens.map((e) {
              return ListTile(
                leading: Icon(_getIconData(e['icon']!)),
                title: Text(e['text']!),
                onTap: () => _navigate(context, e['text']!),
              );
            }).toList(),
          ],
        ),
      ),
      body: body,
    );
  }
}

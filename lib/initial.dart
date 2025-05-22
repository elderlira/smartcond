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
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final Color backgroundColor = Colors.blueAccent;
    late String user = 'Renan';

    return Menu(
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            height: 100,
            width: screenWidth,
            decoration: BoxDecoration(color: backgroundColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bem-vindo, $user',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Gerencie seu condomínio de forma inteligente',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text('tela inicial'),
        ],
      ),
    );
  }
}

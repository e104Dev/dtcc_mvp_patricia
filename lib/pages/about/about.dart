import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre nós')),
      body: Column(
        children: [
          const Text(
            'Contato',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('contato@shockinfast@gmail.com'),
          ),
          const ListTile(
            leading: Icon(Icons.smartphone_outlined),
            title: Text('(19) 99999-6666'),
          ),
          const ListTile(
            leading: Icon(Icons.location_city),
            title: Text('Rua 5, 500 - Centro  - Artur Nogueira - SP'),
          ),
          const Divider(
            height: 60,
            thickness: 2,
          ),
          const Text(
            'Redes Sociais',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.facebook),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.linkedin),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.instagram),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

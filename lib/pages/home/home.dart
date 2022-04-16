// ignore_for_file: unnecessary_const

import 'package:dtcc_mvp_patricia/pages/about/about.dart';
import 'package:flutter/material.dart';

import 'widgets/card_widget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final images = [
    'https://images.pexels.com/photos/11638290/pexels-photo-11638290.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/4629630/pexels-photo-4629630.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/4545336/pexels-photo-4545336.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/3536244/pexels-photo-3536244.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/5672284/pexels-photo-5672284.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/10060253/pexels-photo-10060253.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/167385/pexels-photo-167385.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/416831/pexels-photo-416831.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xAF713191),
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: const Icon(
          Icons.adb,
        ),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Destaques',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              MaterialPageRoute(builder: (context) => const About());
            },
            child: const Text(
              'Sobre Nós',
              style: TextStyle(color: Colors.white),
            ),
          ),
          // const Spacer(flex: 3),
          Container(
            color: Colors.white,
            height: 36,
            margin: const EdgeInsets.all(4),
            width: MediaQuery.of(context).size.width / 3,
            child: const Center(
              child: const TextField(
                decoration: const InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Buscar...',
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) => MvpCard(
            numero: index,
            banda: images[index],
          ),
        ),
      ),
    );
  }
}

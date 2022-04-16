import 'package:dtcc_mvp_patricia/pages/about/about.dart';
import 'package:dtcc_mvp_patricia/pages/home/widgets/home.dart';
import 'package:flutter/material.dart';

main() => runApp(const MvpPatricia());

class MvpPatricia extends StatelessWidget {
  const MvpPatricia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Map<int, Color> color = {
      50: Color.fromRGBO(68, 37, 75, .1),
      100: Color.fromRGBO(68, 37, 75, .2),
      200: Color.fromRGBO(68, 37, 75, .3),
      300: Color.fromRGBO(68, 37, 75, .4),
      400: Color.fromRGBO(68, 37, 75, .5),
      500: Color.fromRGBO(68, 37, 75, .6),
      600: Color.fromRGBO(68, 37, 75, .7),
      700: Color.fromRGBO(68, 37, 75, .8),
      800: Color.fromRGBO(68, 37, 75, .9),
      900: Color.fromRGBO(68, 37, 75, 1),
    };

    return MaterialApp(
      theme: ThemeData(
        // primaryColor: const Color(0xFF713191),
        primarySwatch: const MaterialColor(0xFF844791, color),
      ),
      home: Home(),
    );
  }
}

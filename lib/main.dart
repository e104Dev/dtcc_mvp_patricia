import 'package:dtcc_mvp_patricia/assets/constants.dart';
import 'package:flutter/material.dart';

import 'pages/home/home.dart';

main() => runApp(const MvpPatricia());

class MvpPatricia extends StatelessWidget {
  const MvpPatricia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor: const Color(0xFF713191),
        primarySwatch: kDefaultColor,
      ),
      home: Home(),
    );
  }
}

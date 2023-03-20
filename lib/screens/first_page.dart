import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        title: const Text("Doctors App"),
      ),
      body: const Center(child: Text("This is application for Doctors.")),
    );
  }
}

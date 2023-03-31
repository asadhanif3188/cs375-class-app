import 'package:flutter/material.dart';
import 'components/side_menu.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        title: const Text("Doctors App"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(msg: "Hello, I am a toast.", gravity: ToastGravity.CENTER_RIGHT);
          },
          child: const Text('Elevated Button'),
        ),
      ),
      // body: const Center(child: Text("This is application for Doctors.")),
    );
  }
}

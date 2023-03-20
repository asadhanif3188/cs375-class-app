import 'package:flutter/material.dart';

import '../doctor_list.dart';
import '../doctor_grid.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,

            ),
            child: Text(
              "Doctors",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.list),
            title: Text("Doctors List"),
            trailing: Icon(Icons.arrow_right),

            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DoctorList())
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.grid_4x4),
            title: Text("Doctors Grid"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const DoctorGrid())
              );
            },
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oi'),
        backgroundColor: Colors.red[900],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.ac_unit_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airplanemode_inactive_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airline_seat_individual_suite_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Drawer aberto'),
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('End Drawer'),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                offset: Offset(20, 20),
              ),
              BoxShadow(
                color: Colors.green,
                blurRadius: 20,
                offset: Offset(-20, -20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

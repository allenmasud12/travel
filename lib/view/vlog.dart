import 'package:flutter/material.dart';
class Vlog extends StatelessWidget {
  const Vlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        title: Text("Vlog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Center(child: Text("No Vlog", style: TextStyle(
              fontSize: 30
          ),))
        ],
      ),
    );
  }
}

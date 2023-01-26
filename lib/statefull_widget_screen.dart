import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  const StateFulWidget({Key? key}) : super(key: key);

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<StateFulWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateful'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Center(child: Text(count.toString()))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

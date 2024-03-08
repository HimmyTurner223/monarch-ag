import 'package:flutter/material.dart';

class RecordsDetailView extends StatefulWidget {
  const RecordsDetailView({super.key});
  _RecordsDetailViewState createState() => _RecordsDetailViewState();
}

class _RecordsDetailViewState extends State<RecordsDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logged Progress"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Text('Current Weight: 40 lbs'),
          Text('Current height: 5 ft'),
          Column(children: [
            Text('1 pound of food given'),
            Text('Hair was trimmed today'),
          ])
        ]),
      ),
    );
  }
}

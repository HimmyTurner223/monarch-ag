import 'package:flutter/material.dart';

class AnimalProfile extends StatefulWidget {
  const AnimalProfile({super.key});
  _AnimalProfileState createState() => _AnimalProfileState();
}

class _AnimalProfileState extends State<AnimalProfile> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  String animalType = 'Goat';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Animal Name',
          style: optionStyle,
        ),
        Row(
          children: [
            Container(
              color: Colors.deepOrange,
              width: 100,
              height: 100,
            ),
            Expanded(
              child: Column(
                children: [
                  Text('Date'),
                  Text(
                      '${DateTime.now().month.toString()}/${DateTime.now().day.toString()}/${DateTime.now().year.toString()}'),
                  Text('Type of Animal'),
                  DropdownButton(
                    value: animalType,
                    items: const [
                      DropdownMenuItem(child: Text("Goat"), value: "Goat"),
                      DropdownMenuItem(child: Text("Lamb"), value: "Lamb"),
                      DropdownMenuItem(child: Text("Pig"), value: "Pig"),
                      DropdownMenuItem(child: Text("Cattle"), value: "Cattle"),
                      DropdownMenuItem(child: Text("Rabbit"), value: "Rabbit"),
                      DropdownMenuItem(child: Text("Turkey"), value: "Turkey"),
                    ],
                    onChanged: (item) {
                      setState(() {
                        if (item != null) {
                          animalType = item;
                        }
                      });
                    },
                  ),
                  Text('Current Weight'),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 8.5, bottom: 8.5),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Text('Type of Feed'),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

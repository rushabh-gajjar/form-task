import 'package:flutter/material.dart';


class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  TextEditingController gardenerId = TextEditingController();
  final TextEditingController startTime = TextEditingController();
  final TextEditingController endTime = TextEditingController();
  final TextEditingController dayofWeek = TextEditingController();
  final TextEditingController requestedby = TextEditingController();

  var Selectdays;
  List items = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User'),
        ),
        body: Form(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: gardenerId,
                  decoration: InputDecoration(
                    labelText: 'GardenerId',
                    border: const OutlineInputBorder(),
                    // enabled: false,
                  ),
                ),


                SizedBox(height: 20),
                TextFormField(
                  controller: startTime,
                  decoration: const InputDecoration(
                    labelText: 'Start-Time',
                    border: OutlineInputBorder(),
                  ),
                  //readOnly: true,

                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: endTime,
                  decoration: InputDecoration(
                    labelText: 'End-Time',
                    border: const OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: DropdownButton(
                    hint: Text("Day Of Week"),
                    isExpanded: true,
                    value: Selectdays,
                    onChanged: ( newValue) {
                      setState(() {
                        Selectdays = newValue;
                      });
                    },
                    icon: const Icon(Icons.keyboard_arrow_down),

                    items: items.map((newValue) {
                      return DropdownMenuItem(
                        value: newValue,
                        child: Text(newValue),
                      );
                    }).toList(),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: requestedby,
                  decoration: InputDecoration(
                    labelText: 'Requested By',
                    border: const OutlineInputBorder(),
                  ),

                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                    }, child: const Text('Submit'))
              ],
            ),
          ),
        ));
  }
}
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isOpen = false;
  String company = "";

  final TextEditingController officeId = TextEditingController();

  // final TextEditingController company = TextEditingController();
  final TextEditingController officeHouse = TextEditingController();
  final TextEditingController officeMapUrl = TextEditingController();
  final TextEditingController officeName = TextEditingController();
  final TextEditingController status = TextEditingController();
  final TextEditingController officeLocality = TextEditingController();
  final TextEditingController officeTiming = TextEditingController();
  final TextEditingController officeCity = TextEditingController();
  final TextEditingController officePinCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Office"),
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text("Office Id : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: officeId,
                decoration: InputDecoration(
                    labelText: "Enter Office Id", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Office Name : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: officeName,
                decoration: InputDecoration(
                    labelText: "Enter Office Name",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Office Timing : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: officeTiming,
                decoration: InputDecoration(
                    labelText: "Enter Office Time",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 9,
              ),
              Text("Company : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  isOpen = !isOpen;
                  setState(() {});
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Choose..."),
                        Icon(isOpen ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              if (isOpen)
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [],
                  ),
                ),
              SizedBox(
                height: 10,
              ),
              Text("Status : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: status,
                decoration: InputDecoration(
                    labelText: "Enter Status", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Office City : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: officeCity,
                decoration: InputDecoration(
                    labelText: "Enter City", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Office House : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: officeHouse,
                decoration: InputDecoration(
                    labelText: "Enter House", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Office Locality : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: officeLocality,
                decoration: InputDecoration(
                    labelText: "Enter Locality", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Office Pin-code : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: officePinCode,
                decoration: InputDecoration(
                    labelText: "Enter PinCode", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Office Map Url : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: officeMapUrl,
                decoration: InputDecoration(
                    labelText: "Enter Map Url", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}

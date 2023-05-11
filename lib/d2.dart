import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({Key? key}) : super(key: key);

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  bool isOpen = false;
  String contact = "Contact";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),


      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30,),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: (){
                isOpen = !isOpen;
                setState(() {

                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(contact),
                      Icon(isOpen
                          ? Icons.arrow_upward:Icons.arrow_downward)
                    ],
                  ),
                ),
              ),
            ),
            if(isOpen)
              Container(
                color: Colors.white,


                child: Column(
                  children: [


                  ],
                ),
              )

          ],
        ),
      ),

    );
  }
}
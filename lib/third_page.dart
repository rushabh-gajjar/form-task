import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool isOpen = false;
  bool isOpen1 = false;
  final String companyId = "";
  final String officeId = "";


  // final TextEditingController companyId = TextEditingController();
  // final TextEditingController officeId = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController designation = TextEditingController();
  final TextEditingController qualification = TextEditingController();
  final TextEditingController emailId1 = TextEditingController();
  final TextEditingController emailId2 = TextEditingController();
  final TextEditingController phone1= TextEditingController();
  final TextEditingController phone2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Person"),
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text("Company Id : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 9,),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: (){
                  isOpen = !isOpen;
                  setState(() {

                  });
                },
                child: Container(
                  height: 60,
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
                        Icon(isOpen
                            ? Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded)
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
                ),
              // TextFormField(
              //   controller: companyId,
              //   decoration: InputDecoration(
              //       labelText: "Enter Company Id", border: OutlineInputBorder()),
              // ),
              SizedBox(
                height: 10,
              ),
              Text("Office Id : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: (){
                  isOpen1 = !isOpen1;
                  setState(() {

                  });
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    border: Border.all(width: 0.5)

                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Choose..."),
                        Icon(isOpen1
                            ? Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              if(isOpen1)
                Container(
                  color: Colors.white,


                  child: Column(
                    children: [


                    ],
                  ),
                ),
              // TextFormField(
              //   controller: officeId,
              //   decoration: InputDecoration(
              //       labelText: "Choose Office Id", border: OutlineInputBorder()),
              // ),
              SizedBox(
                height: 10,
              ),
              Text("Name : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                    labelText: "Enter Name", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Designation : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              TextFormField(
                controller: designation,
                decoration: InputDecoration(
                    labelText: "Enter Designation", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Qualification : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              TextFormField(
                controller: qualification,
                decoration: InputDecoration(
                    labelText: "Enter Qualification", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Email 1 : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              TextFormField(
                controller: emailId1,
                decoration: InputDecoration(
                    labelText: "Enter Email Id1",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Email 2 : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              TextFormField(
                controller: emailId2,
                decoration: InputDecoration(
                    labelText: "Enter Email Id2", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Phone 1 : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              TextFormField(
                controller: phone1,
                decoration: InputDecoration(
                    labelText: "Enter Phone1",
                    border: OutlineInputBorder()),
              ),SizedBox(
                height: 10,
              ),
              Text("Phone 2 : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              TextFormField(
                controller: phone2,
                decoration: InputDecoration(
                    labelText: "Enter Phone2", border: OutlineInputBorder()),
              ),

              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {}, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}

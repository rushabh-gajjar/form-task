import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  bool isOpen = false;
  bool isOpen1 = false;
  bool isOpen2 = false;


  String chooseCompany = "";
  String masterProductService = "";
  String masterProductServiceType = "";

  final TextEditingController productName = TextEditingController();
  final TextEditingController price = TextEditingController();
  // final TextEditingController chooseCompany = TextEditingController();
  // final TextEditingController masterProductServiceType =
  //     TextEditingController();
  final TextEditingController productDescription = TextEditingController();
  final TextEditingController discount = TextEditingController();
  // final TextEditingController masterProductService = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Company Product "),
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text("Product/Service Name : ",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: productName,
                decoration: InputDecoration(
                    labelText: "Enter Product/Service Name",

                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Product Service Description : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                minLines: 1,
                maxLines: 5,
                controller: productDescription,
                decoration: InputDecoration(
                    labelText: "Enter Product/Service Description",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Price : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: price,
                decoration: InputDecoration(
                    labelText: "Enter Price", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Discount : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: discount,
                decoration: InputDecoration(
                    labelText: "Enter Discount", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Choose Company : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 13,
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
                height: 13,
              ),
              Text("Master Product Service : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 11,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  isOpen1 = !isOpen1;
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
                        Icon(isOpen1 ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              if (isOpen1)
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [],
                  ),
                ),
              SizedBox(
                height: 13,
              ),
              Text("Master Product Service Type : ",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                height: 10,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  isOpen2 = !isOpen2;
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
                        Icon(isOpen2 ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              if (isOpen2)
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [],
                  ),
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

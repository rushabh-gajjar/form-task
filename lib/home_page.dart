import 'package:flutter/material.dart';
import 'package:form_task/first_page.dart';
import 'package:form_task/second_page.dart';
import 'package:form_task/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Padding(padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            color: Colors.blueAccent,
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstPage()));
              },

              title: Text("Company Product Services Page",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
            ),
          ),
          Card(
            color: Colors.blueAccent,
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));
              },

              title: Text("Add Office Page",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
            ),
          ),
          Card(
            color: Colors.blueAccent,
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdPage()));
              },

              title: Text("Contact Person Page",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
            ),
          ),

        ],
      )),
    );
  }
}

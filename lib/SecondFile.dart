
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'main.dart';

void main(){
  runApp(MaterialApp(
    home: SecondFile(),
  ));
}
class SecondFile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN IN'),
      ),
      body:MyHome(),
    );
  }

}
class MyHome extends StatefulWidget {


  @override
  State<MyHome> createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {

  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child:Column(
        children: [
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the value";
                }
                return null;

              },
              decoration: InputDecoration(
                  hintText: ('Email')
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the value";
                }
                return null;

              },
              decoration: InputDecoration(
                  hintText: ("Password")
              ),
            ),
          ),
          ElevatedButton(onPressed:(){

            if(formkey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Not connected to database....')));
            }
          },
              child: Text("LOGIN")
          ),
          ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
            
              }, child: Text('GO BACK ', style: TextStyle(color:Colors.white),),
          ),
        ],
      ),
    );
  }
}
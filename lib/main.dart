import 'package:flutter/material.dart';

import 'SecondFile.dart';

void main(){
  runApp(
      MaterialApp(
          home:MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP '),
      ),
      body:MyCustomForm(),
    );
  }
}
class MyCustomForm extends StatefulWidget {

  @override
  State<MyCustomForm> createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  @override

  final formkey = GlobalKey <FormState> ();
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child:Column(
        children: [

          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: ("First Name")
              ),
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the value";
                }
                return null;

              },

            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: ("Last Name")
              ),

              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the value";
                }
                return null;

              },
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText:('EMAIL')
              ),
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the value";
                }
                return null;

              },
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: ('Password')
              ),
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the value";
                }
                return null;

              },
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: ('Confirm Password')
              ),
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the value";
                }
                return null;

              },
            ),
          ),
          ElevatedButton(onPressed:(){
            Navigator.push(context,MaterialPageRoute
              (builder: (context) =>SecondFile()));
          },
            child: Text("CREATE ACCOUNT"),
          ),
          Text('Already have an account ? Login')
        ],
      ),
    );
  }
}
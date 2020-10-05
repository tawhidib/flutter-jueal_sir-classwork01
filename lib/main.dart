import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String enterdText = "";
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0,),
          child: Container(
            child: Column(
              children: [
                TextField(
                  maxLength: 160,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText:
                      'What\'s on your mind!'
                  ),
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black54,
                  ),

                  // keyboardType: TextInputType.number,
                  onChanged: (text){
                    enterdText = text;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  child: Text(
                    'Submit',
                  ),
                  color: Colors.amberAccent,
                  onPressed: (){
                    setState(() {
                      if(enterdText != "")
                        {
                          enterdText = enterdText;
                        }
                      else
                        {
                          enterdText = "Please Write something first then press submit";
                        }
                    });
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  enterdText,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

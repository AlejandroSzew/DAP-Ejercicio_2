import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  
}



class _MyAppState extends State<MyApp> {
  String title = "Login" ;
  TextEditingController inputTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold ( 
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title,style: TextStyle(fontSize: 24),),
        SizedBox(height: 20,), 
        Padding(
          padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: inputTextController,
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            hintText: "Escribe aqui",
            border: OutlineInputBorder(),
          ),
        )
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () {
          String inputText = inputTextController.text;
          if(inputText == 'Hola'){
            title = 'Hello';

          }else{
            title = inputText;
          }
          title = inputText;

          setState((){});
        }
        
        , child: Text ("Aceptar"))

      ],)  
    )

      );
      
  }
}


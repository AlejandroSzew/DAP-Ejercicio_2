import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
=======
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

    return const MaterialApp(
      home: LoginScreen(), 
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController userController = TextEditingController();
    TextEditingController passController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: userController,
              decoration: const InputDecoration(
               icon: Icon(Icons.person)
                 )
            ),
            TextField(
              controller: passController,
              decoration: const InputDecoration(labelText: "Contraseña",
              icon: Icon(Icons.password)
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (userController.text == "ale" && passController.text == "1234") { 
                  ScaffoldMessenger.of(context).showSnackBar( const SnackBar(content: Text("Login correcto")),
                  );
                } 
                if (userController.text == "ale" || passController.text == "1234")
                { 
                  ScaffoldMessenger.of(context).showSnackBar( const SnackBar(content: Text("Usuario o contraseña incorrectos")),
                  );
                } 
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Login incorrecto")),
                  );
                }
              },
              child: const Text("Ingresar"),
            ),
          ],

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


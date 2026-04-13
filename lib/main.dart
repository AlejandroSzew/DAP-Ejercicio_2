import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        ),
      ),
    );
  }
}

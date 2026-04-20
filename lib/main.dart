import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "Login";
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Usuario",
                ),
              ),
              TextField(
                controller: passController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "Contraseña",
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (userController.text == "ale" &&
                      passController.text == "1234") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Login correcto")),
                    );
                    setState(() {
                      title = "Bienvenido";
                    });
                  } else {
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
      ),
    );
  }
}

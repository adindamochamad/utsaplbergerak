import 'package:flutter/material.dart';
import 'halamanhome.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("LOGIN")),
        backgroundColor: const Color.fromRGBO(121, 0, 0, 1.0),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 100.0, bottom: 50.0),
            child: Column(children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 50.0,
                ),
              ),
              Text(
                "Login to Suroboyo Bus App",
                style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromRGBO(121, 0, 0, 1.0)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(121, 0, 0, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromRGBO(121, 0, 0, 1.0)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(121, 0, 0, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HalamanHome()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(121, 0, 0, 1.0),
                  ),
                  child: const Text("Login"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

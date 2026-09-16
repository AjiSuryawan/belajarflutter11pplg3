import 'package:belajarflutter11pplg3/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Login Page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextfield(
              myHint: "input username",
              txtController: txtUsername,
              radius: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hint: Text("input password")),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 5, 165, 66),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Register")),
            ],
          ),
        ],
      ),
    );
  }
}

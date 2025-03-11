import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginscreen.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final hight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login')),
            TextButton(onPressed: () {}, child: Text('Login')),
            OutlinedButton(onPressed: () {}, child: Text('Login')),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginscreen()));
              },
              child: Container(),
            ),
            IconButton(onPressed: () {
              
            }, icon: Icon(Icons.abc)),
            Container(
              height: hight * 0.6,
              width: width * 0.6,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.amber, Colors.pink],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight)),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Enter Email',
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.black)
                        ),
                    prefixIcon: Icon(Icons.abc),
                    suffixIcon: Icon(Icons.vibration),
                    fillColor: Colors.green,
                    filled: true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

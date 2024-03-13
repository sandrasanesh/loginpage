import 'package:flutter/material.dart';
import 'signin.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      'welcome',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'backslash Flutter provides extraordinary flutter \ntutorials.Do subcribe !',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkovC9a5Je29Pg-DaKoC5fPi8s2JAdD5wNqx1esDO7uEv4r9LFFAl1Xu-IZKZYBRMqBz4&usqp=CAU"),
                height: 300,
                width: 700,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {  
                      Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context)=> const SignInPage()) ,(Route) =>false);


                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 60,
                    minWidth: 400,
                  ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                    Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => SignUpPage()),
            ); },


                    child: Text(
                      "sign up",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.blue,
                    minWidth: 400,
                    height: 60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

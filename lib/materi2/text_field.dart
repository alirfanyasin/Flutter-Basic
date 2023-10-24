import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHidden = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          SizedBox(height: 50),
          TextField(
            controller: emailController,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              // prefix: Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: Icon(Icons.email_outlined),
              // ),
              prefixIcon: Icon(Icons.email_outlined),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              label: Text("Email Address"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: passwordController,
            autocorrect: false,
            obscureText: isHidden,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_clock_outlined),
              suffixIcon: IconButton(
                onPressed: () {
                  if (isHidden == true) {
                    isHidden = false;
                  } else {
                    isHidden = true;
                  }
                  setState(() {});
                },
                icon: Icon(Icons.remove_red_eye_outlined),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: "Password",
            ),
          ),

          SizedBox(height: 30),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsetsDirectional.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              print(
                  "Email : (${emailController.text}) & Password : (${passwordController.text})");
            },
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20),
            ),
          )

          // TextField(
          //   autocorrect: false,
          //   keyboardType: TextInputType.url,
          // ),
        ],
      ),
    );
  }
}

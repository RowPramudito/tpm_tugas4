import 'package:flutter/material.dart';
import 'package:tpm_0604/menu.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SizedBox(height: 50,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.topCenter,
                child: const Text(
                  'Welcome!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 30,),
              _usernameField(),
              _passwordField(),
              _LoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

      child: TextFormField(
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          labelText: 'Username',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
              )
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
              )
          ),
        ),
      ),
    );
  }

  Widget _LoginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: 120,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
        onPressed: (){
          String text = "";

          if(username == "user" && password == "12345") {
            setState(() {
              isLoginSuccess = true;
              text = "Login success";
            });
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return MenuPage();
                })
            );
          }
          else {
            setState(() {
              isLoginSuccess = false;
              text = "Login failed";
            });
          }

          SnackBar snackbar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
        child: Text('Login'),
      ),
    );
  }

}

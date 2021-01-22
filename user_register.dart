
import 'package:flutter/material.dart';
import 'package:health_plus/user_login.dart';

class UserRegister extends StatefulWidget {
  @override
  _UserRegisterState createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[400],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Align(
                child: Container(
                  margin: const EdgeInsets.only(top: 100.0),
                  child: Text('Register',style: TextStyle(
                    color: Colors.white,fontSize: 28,fontWeight: FontWeight.w600
                  ),),
                ),
              ),

              ListTile(
                title: TextField(
                  controller: fNameController,
                  cursorColor: Colors.white,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: 'First Name',labelStyle: TextStyle(
                      color: Colors.white
                  ),
                    hintText: '',hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  ),
                ),
              ),

              ListTile(
                title: TextField(
                  controller: lNameController,
                  cursorColor: Colors.white,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: 'Last Name',labelStyle: TextStyle(
                      color: Colors.white
                  ),
                    hintText: '',hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  ),
                ),
              ),

              ListTile(
                title: TextField(
                  controller: emailController,
                  cursorColor: Colors.white,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: 'Email',labelStyle: TextStyle(
                      color: Colors.white
                  ),
                    hintText: '',hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  ),
                ),
              ),

              Container(
                child: ListTile(title: TextField(
                  controller: passwordController,
                  cursorColor: Colors.white,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: 'Password',labelStyle: TextStyle(
                      color: Colors.white
                  ),
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.white,),
                    hintText: '', hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  ),
                  obscureText: true,
                ),
                ),),

              Container(
                margin: const EdgeInsets.only(top: 40),
                child: FlatButton(child: Text('Create Account',style: TextStyle(
                    fontSize: 18,color: Colors.white
                ),
                ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white,width: 1)
                  ),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserLogin()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


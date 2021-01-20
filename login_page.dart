import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:health_plus/helper/media_query.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            //height: MediaQuery.of(context).size.height * 1,
            height: displayHeight(context) * 1,
              child: Column(children: <Widget>[
                ClipPath(
                  clipper: WaveClipperTwo(flip: false),
                  child: Container(
                    // height: displayHeight(context) -500,
                    height: MediaQuery.of(context).size.height * 0.30,
                    color: Colors.deepOrange[600],
                  ),
                ),
                Text("Let's get Start",style: TextStyle(
                    fontSize: 22,color: Colors.deepOrange
                ),
                  textAlign: TextAlign.start,
                ),
                Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      hintStyle:
                                      TextStyle(color: Colors.grey[500])),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle:
                                      TextStyle(color: Colors.grey[500])),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepOrange[600]),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                         alignment: Alignment.center,
                            child: Column(
                              children: <Widget>[
                                Text('Forgot Password?',style: TextStyle(
                                  color: Colors.deepOrange,fontWeight: FontWeight.bold
                                ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text('Or'),
                                SizedBox(height: 4),
                                FloatingActionButton(
                                    onPressed: (){
                                    },
                                  elevation: 0.0,
                                  child: Text('f',style: TextStyle(fontSize: 22),),
                                  backgroundColor: Colors.deepOrange,),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                        ),
                      ],
                    ),
                ),
                ClipPath(
                  clipper: WaveClipperTwo(flip: false, reverse: true),
                  child: Container(
                    color: Colors.grey[200],
                     height: MediaQuery.of(context).size.height *0.10,
                    //height: displayHeight(context) * 0.20,
                    // alignment: Alignment(-1.0,-1.0),
                  ),
                ),
              ],
              ),
          ),
        ),
    );
  }
}
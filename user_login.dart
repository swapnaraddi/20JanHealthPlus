import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_plus/home_page.dart';
import 'package:health_plus/user_register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final TextEditingController mailcontroller = TextEditingController();
  final TextEditingController pswdcontroller = TextEditingController();

  SharedPreferences userData;
  bool newuser;
  bool rememberme = false;

  //String _currentData;

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberme = newValue;

        if (rememberme == true) {
          print(_onChanged(true));
          _onChanged(true);

          // TODO: Here goes your functionality that remembers the user.

        } else {
          // TODO: Forget the user
        }
      });

  _onChanged(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      var checkValue = value;
      preferences.setBool("check", checkValue);
      // preferences.setBool('RememberMe',rememberme);
      preferences.setString("UserEmail", mailcontroller.text);
      preferences.setString("UserPassword", pswdcontroller.text);
      getUserLoginData();
    });
  }

  @override
  initState() {
    super.initState();
    getUserLoginData();
  }

  void getUserLoginData() async {
    userData = await SharedPreferences.getInstance();
    newuser = userData.getBool('login') ?? true;
    // rememberme = userData.getBool('RememeberMe') ?? true;
    print(newuser);
    if (newuser == false) {
      print(newuser);
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Home()));
    }
  }

  // void getUserData()  async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance() as SharedPreferences;
  //   setState(() {
  //     mailcontroller = prefs.getString("Email") as TextEditingController;
  //     pswdcontroller = prefs.getString("Password") as TextEditingController;
  //   });
  // }

  // @override
  // void setState(fn) {
  //   // TODO: implement setState
  //   super.setState(fn);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.76, 0.7, 0.7, 1],
                  colors: [
                Colors.blue[400],
                Colors.grey,
                Colors.lightBlue[400],
                Colors.grey
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image(
                  width: 100.0,
                  height: 100.0,
                  image: AssetImage('assets/images/hand.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 0.0, top: 20),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 28),
                ),
              ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w600,),),
              // ),
              ListTile(
                title: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  controller: mailcontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              Container(
                child: ListTile(
                  title: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.white,
                    controller: pswdcontroller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      checkColor: Colors.white,
                      value: rememberme,
                      focusColor: Colors.white,
                      onChanged: _onRememberMeChanged,
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),

              Text(
                'Forgot Password?',
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.white),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30),
                child: FlatButton(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 1)),
                  onPressed: () async {
                    String userMail = mailcontroller.text;
                    String userPswd = pswdcontroller.text;
                    String user_name;
                    if (userMail != '' && userPswd != ''|| rememberme==true) {
                      print("User Data is Saved\n:" "Emaail is" +" "+ userMail + "Passworrd is" +" "+userPswd);
                      userData.setBool("login", false);
                      userData.setBool('RememberMe',false);
                      userData.setString('userName', user_name);
                      userData.setString("UserEmail", userMail);
                      userData.setString("UserPassword", userPswd);
                      showAlertDialog(context);
                    } else {
                      showADialog(context);
                    }
                  },
                ),
              ),

              FlatButton(
                  child: Text(
                    "Don't have an account?? Create here",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserRegister()));
                  }),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   elevation: 0.0,
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.white,
      //     size: 28,
      //   ),
      //   backgroundColor: Colors.blue,
      // ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.of(context);
      //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    },
  );
  Widget cancelButton = FlatButton(
    child: Text('Ok'),
    onPressed: () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Home()),
          (Route<dynamic> route) => false);
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Message"),
    content: Text("Login Successful"),
    actions: [okButton, cancelButton],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showADialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () => Navigator.of(context).pop(true),
  );

  AlertDialog alert = AlertDialog(
    title: Text("Message"),
    content: Text("Invalid Email and Password"),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

//Email already Exist
showExistDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () => Navigator.of(context).pop(true),
  );

  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text("User Already Exist"),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_plus/book_sesstion.dart';
import 'package:health_plus/find_doctor.dart';
import 'package:health_plus/user_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SharedPreferences userData;
  String userEmail,userPswd,userName;
  final GlobalKey < ScaffoldState > _scaffoldKey = new GlobalKey<ScaffoldState>
    ();

  void getUserData() async {
    userData = await SharedPreferences.getInstance();
    setState(() {
      userName = userData.getString('userName');
      userEmail = userData.getString('UserEmail');
      userPswd = userData.getString('UserPassword');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //to hide the status bar
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                currentAccountPicture: new CircleAvatar(
                  radius: 50.0,
                  backgroundColor: const Color(0xFF778899),
                  backgroundImage:
                      NetworkImage("http://tineye.com/images/widgets/mona.jpg"),
                ),
                accountName: Container(
                  child: Text(
                    'Sky Cliff IT',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                accountEmail: Container(
                  child: Text(
                    'skycliff@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )),
            // Divider(
            //   height: 1,
            //   thickness: 1,
            // ),
            ListTile(
              leading: Icon(Icons.library_books_rounded),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Book Session',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BookSession()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                  userData.setBool('login', true);
                //final snackBar = SnackBar(content: Text('Profile saved'));
                //   final snackbar = SnackBar(content: Text('Navigating to Login screen'));
                //   _scaffoldKey.currentState.showSnackBar(snackbar);
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserLogin()));
              },
            ),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Padding(
                padding: const EdgeInsets.only(left: 16,top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Hello,',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18
                    ),),
                    Text('How can we take care yourself?',style: TextStyle(
                      fontSize: 18,color: Colors.grey
                    ),),
                  ],
                ),
              ),

          SizedBox(height: 100),

          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FindDoctor()));
                        },
                        child: Card(
                          color: Colors.blue,
                          child: Container(
                            width: 150,
                            height: 150,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.person,
                                      size: 30.0, color: Colors.white),
                                ),
                                ListTile(
                                  title: Text(
                                    'Find Doctor',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('210 Doctors',style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorList()));
                        },
                        child: Card(
                          color: Colors.grey,
                          child: Container(
                            width: 150,
                            height: 150,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.medical_services,
                                      size: 30.0, color: Colors.white),
                                ),
                                ListTile(
                                  title: Text(
                                    'Find Hospital',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('20 Hospitals',style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorList()));
                        },
                        child: Card(
                          color: Colors.grey,
                          child: Container(
                            width: 150,
                            height: 150,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.add_to_photos,
                                      size: 30.0, color: Colors.white),
                                ),
                                ListTile(
                                  title: Text(
                                    'Appointment',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('45 Available',style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorList()));
                        },
                        child: Card(
                          color: Colors.grey,
                          child: Container(
                            width: 150,
                            height: 150,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.calendar_today_sharp,
                                      size: 30.0, color: Colors.white),
                                ),
                                ListTile(
                                  title: Text(
                                    'Drug List',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('25 Services',style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class AllDoctorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 249, 1),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Image.asset('assets/icons/menu.svg'),
                    // Image.asset('assets/icons/profile.svg'),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Find Your Desired\nDoctor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: SearchBar(),
              // ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      width: 130,
                      height: 160,
                      child: Stack(
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 110,
                              height: 137,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Dental\nSurgeon',
                                  style: TextStyle(
                                    color: Colors.indigo[900],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: 84,
                              width: 84,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(75, 127, 252, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                "assets/images/icon.png",
                                scale: 10.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 160,
                      child: Stack(
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 110,
                              height: 137,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Heart\nSurgeon',
                                  style: TextStyle(
                                    color: Colors.indigo[900],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: 84,
                              width: 84,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 177, 102, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                "assets/images/eye.png",
                                scale: 6.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 160,
                      child: Stack(
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 110,
                              height: 137,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Eye\nSpecialist',
                                  style: TextStyle(
                                    color: Colors.indigo[900],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: 84,
                              width: 84,
                              decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                "assets/images/heart.png",
                                scale: 6.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 160,
                      child: Stack(
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 110,
                              height: 137,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Heart\nSurgeon',
                                  style: TextStyle(
                                    color: Colors.indigo[900],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: 84,
                              width: 84,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.network(
                                "https://www.pngkey.com/png/full/196-1960872_doctors-clipart-doctor-patient-see-doctor-png.png",
                                height: 2,
                                width: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 160,
                      child: Stack(
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 110,
                              height: 137,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Heart\nSurgeon',
                                  style: TextStyle(
                                    color: Colors.indigo[900],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: 84,
                              width: 84,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // child: Image.asset(
                              //   _imageUrl,
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Top Doctors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                child: InkWell(
                  onTap: () {},
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Container(
                      //margin: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ListTile(
                          leading: Image.network(
                              'https://www.pngkey.com/png/full/196-1960872_doctors-clipart-doctor-patient-see-doctor-png.png'),
                          title: Text(
                            'Dr. Stella Kane',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Heart Surgeon - Flowers Hospital',
                            style: TextStyle(
                              color: Colors.blueGrey.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 4),
                child: InkWell(
                  onTap: () {},
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.network('https://www.pngkey.com/png/full/196-1960872_doctors-clipart-doctor-patient-see-doctor-png.png'),
                        title: Text(
                          'Dr. Joseph Kart',
                          style: TextStyle(
                            color: Color.fromARGB(251,242,235,1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Dental Surgeon - Flowers Hospital',
                          style: TextStyle(
                            color: Colors.blueGrey.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 4),
                child: InkWell(
                  onTap: () {},
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.network('https://www.pngkey.com/png/full/196-1960872_doctors-clipart-doctor-patient-see-doctor-png.png'),
                        title: Text(
                          'Dr. Sahana B',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Dental Surgeon - Flowers Hospital',
                          style: TextStyle(
                            color: Colors.blueGrey.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 4),
                child: InkWell(
                  onTap: () {},
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.network('https://www.pngkey.com/png/full/196-1960872_doctors-clipart-doctor-patient-see-doctor-png.png'),
                        title: Text(
                          'Dr. Sahana B',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Eye Specialist - Manipal Hospital',
                          style: TextStyle(
                            color: Colors.blueGrey.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

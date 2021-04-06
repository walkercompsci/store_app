import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Contacts(),
));

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.orange[600],
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(
                      'Made By Special Hands',
                    ),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/begin');
                  },
                    icon: Icon(Icons.water_damage),
                    label: Text("Home"),
                  ),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/mission');
                  },
                    icon: Icon(Icons.airport_shuttle),
                    label: Text("Mission"),
                  ),
                  Icon(Icons.account_circle_rounded),
                  SizedBox(width: 10),
                  Text("Contacts"),
                  SizedBox(width: 10,),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/pictures');
                  },
                    icon: Icon(Icons.add_a_photo),
                    label: Text("Community"),
                  ),
                  SizedBox(width: 10,),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/products');
                  },
                    icon: Icon(Icons.wb_sunny),
                    label: Text("Products"),
                  ),
                ],
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/cart');
                    },
                  ),
                ),
              ],
            ),
            //Jill
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            border: Border.all(
                              color: Colors.black,
                              width: 4,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 1100,
                          child: Row(
                            children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                              'Jill Lines',
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                          ),
                            ),
                            SizedBox(width: 10.0),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/jill.jpg'),
                              radius: 40.0),
                              SizedBox(width: 10.0),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Department Chair for Warren Central High School/Exceptional Learners  317-532-6200 ext 6401       Email: jlines@warren.k12.in.us',
                                      style: TextStyle(
                                        color: Colors.orange[900],
                                        letterSpacing: 2.0,
                                        fontSize: 20.0,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Veronica
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            border: Border.all(
                              color: Colors.black,
                              width: 4,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 1280,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Veronica Holmes',
                                  style: TextStyle(
                                    fontSize: 50.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              CircleAvatar(
                                  backgroundImage: AssetImage('assets/veronica.jpg'),
                                  radius: 40.0),
                              SizedBox(width: 10.0),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Department Chair for Warren Central High School/Exceptional Learners  317-532-6200 ext 6401       Email: jlines@warren.k12.in.us',
                                    style: TextStyle(
                                      color: Colors.orange[900],
                                      letterSpacing: 2.0,
                                      fontSize: 20.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Dena
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            border: Border.all(
                              color: Colors.black,
                              width: 4,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 1200,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Dena Condra',
                                  style: TextStyle(
                                    fontSize: 50.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              CircleAvatar(
                                  backgroundImage: AssetImage('assets/dena.jpg'),
                                  radius: 40.0),
                              SizedBox(width: 10.0),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Department Chair for Warren Central High School/Exceptional Learners  317-532-6200 ext 6401       Email: jlines@warren.k12.in.us',
                                    style: TextStyle(
                                      color: Colors.orange[900],
                                      letterSpacing: 2.0,
                                      fontSize: 20.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Clark
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            border: Border.all(
                              color: Colors.black,
                              width: 4,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 1175,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Cheryl Clark',
                                  style: TextStyle(
                                    fontSize: 50.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              CircleAvatar(
                                  backgroundImage: AssetImage('assets/clark.jpg'),
                                  radius: 40.0),
                              SizedBox(width: 10.0),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Department Chair for Warren Central High School/Exceptional Learners  317-532-6200 ext 6401       Email: jlines@warren.k12.in.us',
                                    style: TextStyle(
                                      color: Colors.orange[900],
                                      letterSpacing: 2.0,
                                      fontSize: 20.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Bell
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            border: Border.all(
                              color: Colors.black,
                              width: 4,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 1135,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Airiele Bell',
                                  style: TextStyle(
                                    fontSize: 50.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              CircleAvatar(
                                  backgroundImage: AssetImage('assets/bell.jpg'),
                                  radius: 40.0),
                              SizedBox(width: 10.0),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Department Chair for Warren Central High School/Exceptional Learners  317-532-6200 ext 6401       Email: jlines@warren.k12.in.us',
                                    style: TextStyle(
                                      color: Colors.orange[900],
                                      letterSpacing: 2.0,
                                      fontSize: 20.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
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
            ),

          ],
        ),
      ),
    );
  }
}
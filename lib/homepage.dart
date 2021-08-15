import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 70, 0, 0),
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text('AlmaConnect',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text('BITSP',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Image.asset('images/graduation.png'),
                Center(
                  child: RaisedButton(
                    onPressed: () {
                      print('button was pressed');
                    },
                    color: Colors.purple[800],
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
                      child: Text('GET STARTED',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                  ),
                )
              ],
            )));
  }
}

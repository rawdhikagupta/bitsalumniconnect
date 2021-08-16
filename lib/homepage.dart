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
                  margin: EdgeInsets.fromLTRB(44, 70, 0, 0),
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 35,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text('AlmaConnect \nBITSP',
                      style: TextStyle(
                        fontFamily: 'Roboto',
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
                    color: Color(0xFF4B2E83),
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

import 'package:flutter/material.dart';

class Page_six extends StatefulWidget {
  const Page_six({Key? key}) : super(key: key);

  @override
  _Page_sixState createState() => _Page_sixState();
}

class _Page_sixState extends State<Page_six> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(10),
            child: ButtonTheme(
              minWidth: 82,
              height: 40,
              child: OutlineButton(
                color: Colors.black,
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Help ?',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                borderSide: BorderSide(
                  color: Color(0xFFA0A0A0),
                  style: BorderStyle.solid,
                  width: 2,
                ),
              ),
            ),
          ),
          Container(
            child: Text('AlmaConnect \nBITS',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
            alignment: Alignment(-0.2, 0),
            child: Text(
              'Great You are paired! \nSend a Quick\nMessage',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24,
              ),
            ),
          ),
          LeftChatbox('Hello!',36),
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(right:39),
            child: Stack(
                children: [
              Image.asset('images/icon2.png'),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('Excited to\nmeet you!',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    )),
              ),
            ]),
          ),
          LeftChatbox('My name\nis Radhika', 20),
          Container(
            padding: EdgeInsets.only(top:20),
            child: ButtonTheme(
              minWidth: 280,
              height: 61,
              child: RaisedButton(
                onPressed: () {
                  print('button was pressed');
                },
                color: Color(0xFF4B2E83),
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                  child: Text('Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class LeftChatbox extends StatelessWidget {
  String text;
  double textsize=0;
   LeftChatbox(this.text, this.textsize);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left:39),
      child: Stack(
           children:[Image.asset('images/icon1.png'), Padding(
             padding: const EdgeInsets.all(30.0),
             child: Text('$text',
                 style: TextStyle(
                   fontFamily: 'Roboto',
                   fontSize:textsize,
                 )),
           ),]),
    );
  }
}

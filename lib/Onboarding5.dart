import 'package:flutter/material.dart';
import 'package:page_view_indicators/linear_progress_page_indicator.dart';

class Pagefive extends StatefulWidget {
  const Pagefive({Key? key}) : super(key: key);

  @override
  _PagefiveState createState() => _PagefiveState();
}

class _PagefiveState extends State<Pagefive> {
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                child: Text(
                  'Welcome to',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 40,
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
                child: Text(
                  'Choose an option',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 28,
                  ),
                ),
              ),
              Card(
                elevation: 6,
                margin: EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Color.fromRGBO(75, 46, 131, 0.15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 44.49,
                        width: 72.88,
                        child: Image.asset('images/face.png'),
                      ),
                      Text('Ask for Referral',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 25,
                          )),
                      Container(
                        height: 26.1,
                        width: 50.53,
                        child: Image.asset('images/arrow.png'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 6,
                margin: EdgeInsets.all(20),
                color: Color.fromRGBO(75, 46, 131, 0.15),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 44.49,
                        width: 72.88,
                        child: Image.asset('images/face.png'),
                      ),
                      Text('Mentorship',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 25,
                          )),
                      Container(
                        height: 26.1,
                        width: 50.53,
                        child: Image.asset('images/arrow.png'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Image.asset('images/left.png')),
                  _buildLinearProgressIndicator(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(208, 0, 5, 0),
                      child: Image.asset('images/right.png'))
                ],
              ),
              Text(
                "2/4",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildLinearProgressIndicator() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 50, 10),
          child: LinearProgressPageIndicator(
            itemCount: 4,
            currentPageNotifier: _currentPageNotifier,
            progressColor: Color(0xFF4B2E83),
            //  width: constraints.maxWidth,
            width: 250,
            height: 5,
          ),
        ),
      ),
    );
  }
}

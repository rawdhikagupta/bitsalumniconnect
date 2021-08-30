import 'package:bitsalumniconnect/utils/asset_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_view_indicators/linear_progress_page_indicator.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  _PageFourState createState() => _PageFourState();
}

final _pageController = PageController();
final _currentPageNotifier = ValueNotifier<int>(0);

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Column(
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
            Text('AlmaConnect \nBITS',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 15,
            ),
            Text(
              'Select what you will pursue',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 38,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFE4E0EC),
                    child: Image.asset('images/coding 1.png'),
                    radius: 35,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 38,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFE4E0EC),
                    child: Image.asset('images/development 1 (2).png'),
                    radius: 35,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 38,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFD094FF),
                    child: Image.asset('images/dashboard 1.png'),
                    radius: 35,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 38,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFE4E0EC),
                    child: Image.asset('images/consultation 1.png'),
                    radius: 35,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 38,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFD094FF),
                    child: Image.asset('images/graduation-cap 1.png'),
                    radius: 35,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 38,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFE4E0EC),
                    child: Image.asset('images/india 1.png'),
                    radius: 35,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 38,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFE4E0EC),
                    child: Image.asset('images/money 1.png'),
                    radius: 35,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 38,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFE4E0EC),
                    child: Image.asset('images/paint-palette 1.png'),
                    radius: 35,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 38,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFD094FF),
                    child: Image.asset('images/world 1.png'),
                    radius: 35,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 94),
              decoration: BoxDecoration(
                  color: Color(0xFF4B2E83),
                  borderRadius: BorderRadius.circular(34)),
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 27),
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

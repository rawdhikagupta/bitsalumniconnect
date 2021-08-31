import 'package:flutter/material.dart';
import 'package:page_view_indicators/linear_progress_page_indicator.dart';
int pagenumber = 4;
class Progressbar extends StatefulWidget {
  int page =1;
Progressbar(@required this.page){pagenumber=page;}
  @override
  _ProgressbarState createState() => _ProgressbarState();
}

class _ProgressbarState extends State<Progressbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Image.asset('images/left.png')),
            Center(child: Progressindicatorbar()),
            // _buildLinearProgressIndicator(),
            Padding(
                padding: EdgeInsets.fromLTRB(208, 0, 5, 0),
                child: Image.asset('images/right.png'))
          ],
        ),
        Text(
          "$pagenumber/4",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ],
    );
  }
}

class Progressindicatorbar extends StatefulWidget {
  const Progressindicatorbar({Key? key}) : super(key: key);

  @override
  _ProgressindicatorbarState createState() => _ProgressindicatorbarState();
}

final _pageController = PageController();
final _currentPageNotifier = ValueNotifier<int>(pagenumber-1);

class _ProgressindicatorbarState extends State<Progressindicatorbar> {
  @override
  Widget build(BuildContext context) {
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

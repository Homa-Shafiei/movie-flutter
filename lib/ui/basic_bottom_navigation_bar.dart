import 'package:flutter/material.dart';
import 'package:movie/ui/home/home_page.dart';
import 'package:movie/utils/constants/string_constants.dart';

class BasicBottomNavigationBar extends StatefulWidget {
  const BasicBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _BasicBottomNavigationBarState createState() =>
      _BasicBottomNavigationBarState();
}

class _BasicBottomNavigationBarState extends State<BasicBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    Text(StringConstants.search),
    Text(StringConstants.category),
    Text(StringConstants.myList),
    Text(StringConstants.account),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Color(0x55242627),
          title: const Text(StringConstants.applicationName),
          elevation: 0,
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: StringConstants.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: StringConstants.search,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: StringConstants.category,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: StringConstants.myList,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: StringConstants.account,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

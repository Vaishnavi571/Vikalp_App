import 'package:flutter/material.dart';
import 'package:vikalp/screens/Account.dart';
import 'package:vikalp/screens/Career.dart';
import 'package:vikalp/screens/Chat.dart';
import 'package:vikalp/screens/College.dart';
import 'package:vikalp/screens/HomeScreen.dart';
import 'package:vikalp/screens/Test.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 2;
  String _title = 'Home';
  static const _pages = <Widget>[
    College(),
    QuizPage(),
    HomeScreen(),
    Career(),
    Chat(),
  ];

  @override
  initState() {
    _title = 'Home';
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'University';
          }
          break;
        case 1:
          {
            _title = 'Test';
          }
          break;
        case 2:
          {
            _title = 'Home';
          }
          break;
        case 3:
          {
            _title = 'Career';
          }
          break;
        case 4:
          {
            _title = 'Chat';
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
          elevation: 4,
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff380955),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          title: Text(
            _title,
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 20,
              color: Color(0xffffffff),
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_sharp),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Account()),
                  );
                })
          ]),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: 'Colleges',
              backgroundColor: Color(0xff000000),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.paste_outlined),
              label: 'Test',
              backgroundColor: Color(0xff000000),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Color(0xff000000),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school_rounded),
              label: 'Careers',
              backgroundColor: Color(0xff000000),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Chat',
              backgroundColor: Color(0xff000000),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffffffff),
          onTap: _onItemTapped),
    );
  }
}

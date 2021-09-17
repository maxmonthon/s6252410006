import 'package:flutter/material.dart';
import 'package:flutter_app_sau1/views/third_page1_ui.dart';
import 'package:flutter_app_sau1/views/third_page2_ui.dart';
import 'package:flutter_app_sau1/views/third_page3_ui.dart';
import 'package:flutter_app_sau1/views/third_page4_ui.dart';

class ThirdUI extends StatefulWidget {
  const ThirdUI({Key? key}) : super(key: key);

  @override
  _ThirdUIState createState() => _ThirdUIState();
}

class _ThirdUIState extends State<ThirdUI> {
  List page = [
    ThirdPage1UI(),
    ThirdPage2UI(),
    ThirdPage3UI(),
    ThirdPage4UI(),
  ];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[400],
        title: Text(
          'Third UI :)',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (Value) {
          setState(() {
            selectIndex = Value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orangeAccent[400],
        selectedItemColor: Colors.black,
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance,
            ),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_applications,
            ),
            label: 'Page2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hdr_weak,
            ),
            label: 'Page3',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.safety_divider,
            ),
            label: 'Page4',
          ),
        ],
      ),
      body: page.elementAt(selectIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/myprofile.jpg',
                ),
              ),
              accountName: Text(
                'Mikey TokyoMajin.',
              ),
              accountEmail: Text(
                'ID: S6252410003.',
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bgdrewer.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/saulogo.png',
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'หน้าแรก',
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ตารางสอน',
              ),
              leading: Icon(
                Icons.table_chart,
                color: Colors.orangeAccent[200],
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ตารางสอบ',
              ),
              leading: Icon(
                Icons.access_alarm,
                color: Colors.orangeAccent[200],
              ),
              trailing: Text(
                '999',
                style: TextStyle(
                  color: Colors.orangeAccent[200],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.orangeAccent[200],
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ออกจากการใช้งาน',
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.orangeAccent[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

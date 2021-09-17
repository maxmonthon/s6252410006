import 'package:flutter/material.dart';
import 'package:flutter_app_sau1/views/forth_tabpage1_ui.dart';
import 'package:flutter_app_sau1/views/forth_tabpage2_ui.dart';
import 'package:flutter_app_sau1/views/forth_tabpage3_ui.dart';
import 'package:flutter_app_sau1/views/forth_tabpage4_ui.dart';
import 'package:flutter_app_sau1/views/forth_tabpage5_ui.dart';
import 'package:flutter_app_sau1/views/forth_tabpage6_ui.dart';

class ForthUI extends StatefulWidget {
  const ForthUI({Key? key}) : super(key: key);

  @override
  _ForthUIState createState() => _ForthUIState();
}

class _ForthUIState extends State<ForthUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[400],
        title: Text(
          'Forth UI ไอที',
          style: TextStyle(
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
              color: Colors.pinkAccent,
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                indicatorColor: Colors.redAccent,
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(
                  fontFamily: 'Kanit',
                ),
                tabs: [
                  Tab(
                    text: 'ตารางสอน',
                    icon: Icon(
                      Icons.mark_as_unread,
                    ),
                  ),
                  Tab(
                    text: 'Tab page2',
                    icon: Icon(
                      Icons.ev_station,
                    ),
                  ),
                  Tab(
                    text: 'Tab page3',
                    icon: Icon(
                      Icons.qr_code_2,
                    ),
                  ),
                  Tab(
                    text: 'Tab page4',
                    icon: Icon(
                      Icons.ev_station,
                    ),
                  ),
                  Tab(
                    text: 'Tab page5',
                    icon: Icon(
                      Icons.desktop_mac,
                    ),
                  ),
                  Tab(
                    text: 'Tab page6',
                    icon: Icon(
                      Icons.zoom_in,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ForthTabpage1UI(),
                  ForthTabpage2UI(),
                  ForthTabpage3UI(),
                  ForthTabpage4UI(),
                  ForthTabpage5UI(),
                  ForthTabpage6UI(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.lightGreenAccent,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
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
                'Monthon J.',
              ),
              accountEmail: Text(
                'ID: S6252410006.',
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

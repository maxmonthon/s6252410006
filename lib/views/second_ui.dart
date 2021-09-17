import 'package:flutter/material.dart';

class SecondUI extends StatefulWidget {
  const SecondUI({Key? key}) : super(key: key);

  @override
  _SecondUIState createState() => _SecondUIState();
}

class _SecondUIState extends State<SecondUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[300],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[700],
        title: Text(
          'Monthon J',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          )
        ],
      ),
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

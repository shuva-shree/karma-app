import 'package:flutter/material.dart';
import 'package:karma/screens/login_page.dart';
import 'package:karma/screens/profile_page.dart';
import 'package:karma/widgets/drives_card.dart';

class DrivePage extends StatelessWidget {
  static const routeName = '/drives-page';
  const DrivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(
              right: 30,
            ),
            child: Text(
              "Karma Drives",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 25, bottom: 25),
              child: Container(
                height: 15,
                width: 110,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                child: Text(
                  "MY DRIVES",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ),
          ]),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Karma Drives',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text('Profile',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              trailing: Icon(Icons.person),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) =>ProfilePage()));
              },
            ),
            ListTile(
              title: const Text('Log Out',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              trailing: Icon(Icons.logout),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              width: 350,
              margin: EdgeInsets.only(left: 5),
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Search here...",
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ListView(
                    children: [
                      DriveCard(),
                      DriveCard(),
                      DriveCard(),
                      DriveCard(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

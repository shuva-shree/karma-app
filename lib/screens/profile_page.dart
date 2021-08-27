import 'package:flutter/material.dart';
import 'package:karma/screens/drive_page.dart';
import 'package:karma/widgets/profile_text_field.dart';

class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 40;
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    bool _value = true;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 12),
                    // padding: EdgeInsets.only(left: 5),
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .popAndPushNamed(DrivePage.routeName);
                        },
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                    right: 45,
                  ),
                  child: Text(
                    "Karma Drives",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  // padding: EdgeInsets.only(left: 5),
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 16, right: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ProfileTextField(
                              title: 'Name',
                              label: 'Name',
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            ProfileTextField(
                                title: 'Phone Number', label: 'Phone Number'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ProfileTextField(
                              title: 'Location',
                              label: 'location',
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            ProfileTextField(
                              title: 'Interest',
                              label: 'Interest',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Notifications",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Switch(
                                activeColor: Theme.of(context).primaryColor,
                                value: _value,
                                onChanged: (bool newVal) {
                                  setState(() {
                                    _value = newVal;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

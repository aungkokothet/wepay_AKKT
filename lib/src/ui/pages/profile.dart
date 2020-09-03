import 'package:flutter/material.dart';
import 'package:wepay/src/ui/wigets/roundedcontainer.dart';
import 'package:wepay/src/ui/wigets/space.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 200,
              color: Theme.of(context).accentColor,
            ),
            Column(
              children: [
                space20(),
                Center(
                  child: Text(
                    "WePay",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                space10(),
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    child: Text("H"),
                  ),
                ),
                space10(),
                Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                space10(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: RoundedContainer(
                      color: Colors.white,
                      height: 500,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: ListTile(
                              onTap: () => print("Agent"),
                              leading: Icon(Icons.portrait),
                              title: Center(child: Text("Agent")),
                              trailing: Icon(Icons.arrow_right),
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: ListTile(
                              onTap: () => print("Setting"),
                              leading: Icon(Icons.settings),
                              title: Center(child: Text("Setting")),
                              trailing: Icon(Icons.arrow_right),
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: ListTile(
                              onTap: () => print("Language"),
                              leading: Icon(Icons.language),
                              title: Center(child: Text("Language")),
                              trailing: Icon(Icons.arrow_right),
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: ListTile(
                              onTap: () => print("About"),
                              leading: Icon(Icons.check_box),
                              title: Center(child: Text("About")),
                              trailing: Icon(Icons.arrow_right),
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                        ],
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

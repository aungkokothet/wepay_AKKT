import 'package:flutter/material.dart';
import 'package:wepay/src/ui/wigets/card.dart';
import 'package:wepay/src/ui/wigets/roundedcontainer.dart';
import 'package:wepay/src/ui/wigets/space.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();

  String text;
  bool isobsure = false;
  String balance = "1000";

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
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "WePay Wallet",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                space10(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      child: Text("H"),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello"),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            isobsure
                                ? Text("$balance kyats")
                                : Text("${"*" * balance.length} kyats")
                          ],
                        )
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.panorama_fish_eye),
                      onPressed: () {
                        setState(() {
                          if (isobsure == false) {
                            isobsure = true;
                          } else {
                            isobsure = false;
                          }
                        });
                      },
                    ),
                  ),
                ),
                space10(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RoundedContainer(
                    color: Colors.white,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PageCard(
                          onTap: () {
                            print("History");
                          },
                          pageTitle: "History",
                          iconData: Icons.history,
                        ),
                        VerticalDivider(
                          width: 1,
                          color: Colors.grey,
                        ),
                        PageCard(
                          onTap: () {
                            print("Cash");
                          },
                          pageTitle: "Cash In/Out",
                          iconData: Icons.casino,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

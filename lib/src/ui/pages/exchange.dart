import 'package:flutter/material.dart';
import 'package:wepay/src/ui/wigets/roundedcontainer.dart';
import 'package:wepay/src/ui/wigets/space.dart';

class ExchangePage extends StatefulWidget {
  static const routeName = '/exchange';

  @override
  _ExchangePageState createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  TextEditingController textEditingController = TextEditingController();
  int exhangerate = 1200;
  String current = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "WePay Exchange",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                space20(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Today Currency Exchange Rate",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "1 SGD = $exhangerate MMK",
                        style: TextStyle(fontSize: 18),
                      ),
                      space20(),
                      RoundedContainer(
                        height: 60,
                        color: Colors.white,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            labelText: 'Input Amount',
                          ),
                          keyboardType: TextInputType.number,
                          controller: textEditingController,
                          onChanged: (value) {
                            if (value == '') {
                              setState(() {
                                current = '';
                              });
                            }
                            setState(() {
                              current =
                                  (int.parse(value) * exhangerate).toString();
                            });
                          },
                        ),
                      ),
                      space40(),
                      Text("SGD"),
                      Icon(
                        Icons.change_history,
                        size: 40,
                      ),
                      Text("MMK"),
                      space40(),
                      RoundedContainer(
                        color: Colors.white,
                        height: 60,
                        child: Center(child: Text(current)),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

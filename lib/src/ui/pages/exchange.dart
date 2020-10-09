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
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Image.asset("assets/images/logo.jpg"),
        ),
        backgroundColor: Colors.white, //Color.fromARGB(255, 240, 108, 155),
        title: Center(child: Text("We Pay Wallet",style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),),),
        actions: <Widget>[
          IconButton(
            color: Color.fromARGB(255, 240, 108, 155),
            icon: const Icon(Icons.settings_overscan),
            tooltip: 'Show QR',
            onPressed: () {},
          ),
          IconButton(
            color: Color.fromARGB(255, 240, 108, 155),
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show History',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          space20(),
          space20(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Today Currency Exchange Rate",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "1 SGD = $exhangerate MMK",
                  style: TextStyle(fontSize: 16),
                ),
                space40(),
                RoundedContainer(
                  height: 45,
                  color: Colors.white,
                  child:TextField(
                    textAlign: TextAlign.center ,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                        current = (int.parse(value) * exhangerate).toString();
                      });
                    },
                  )),

                space10(),
                Text("SGD"),
                Icon(
                  Icons.autorenew,
                  size: 30,
                  color: Color.fromARGB(255, 240, 108, 155),
                ),
                Text("MMK"),
                space10(),
                RoundedContainer(
                  color: Colors.white,
                  height: 40,
                  child: Center(child: Text(current)),
                ),
                space40(),

              ],
            ),
          ),
          Column(children: [
          DropdownExample(),
          RaisedButton(
            textColor: Colors.white,
            color: Color.fromARGB(255, 240, 108, 155),
            child: Text("Exhange/Remit"),
            onPressed: () {},
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0),
            ),
          ),
          ],)
        ],
      ));
  }
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() {
    return _DropdownExampleState();
  }
}

class _DropdownExampleState extends State<DropdownExample> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            child: Text('Exchange'),
            value: 'one',
          ),
          DropdownMenuItem<String>(
            child: Text('Remit'),
            value: 'two',
          ),
        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        hint: Text('Exchange/Remit'),
        value: _value,
      ),
    );
  }
}
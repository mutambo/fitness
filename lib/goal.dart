import 'package:flutter/material.dart';
import 'package:gymapp/homepage.dart';

class Goal extends StatefulWidget {
  // Goal({Key key}) : super(key: key);

  @override
  _GoalState createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  String dropdownValue = '1';
  String dropValue = 'Saturday';

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      body: Container(
        child: Column(
          children: [
            IconButton(
                padding: EdgeInsets.only(right: 430, top: 20),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Text(
                  'SET YOUR WEEKLY GOAL',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
                Text(
                  'We recomend at least 3 days weekly for a better result',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Weekly training days',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton(
                        isExpanded: true,
                        value: dropdownValue,
                        style: const TextStyle(color: Colors.greenAccent),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['1', '2', '3', '4', '5', '6', '7']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList()),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Text(
                  'First Day of the Week',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: ButtonTheme(
                    child: DropdownButton(
                        isExpanded: true,
                        value: dropValue,
                        style: const TextStyle(color: Colors.greenAccent),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropValue = newValue!;
                          });
                        },
                        items: <String>['Saturday', 'Sunday', 'Monday']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList()),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Colors.amberAccent,
                      onPressed: () {
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context) => Goal()));
                      },
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/abs.jpg'), fit: BoxFit.fill)),
      ),
    );
    return scaffold;
  }
}

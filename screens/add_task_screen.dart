import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33333D),
      // backgroundColor: Colors.white,
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 50, 0, 10),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SizedBox(
                      height: 22,
                      width: 10,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xffFA4A8D),
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 50, 0, 10),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: "Enter Title",
                        hintStyle: TextStyle(
                          color: Color(0xffFA4A8D).withOpacity(0.5),
                          fontSize: 30,
                          fontFamily: "Aeonik",
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Aeonik",
                        color: Colors.white,
                      ),
                      // validator: (input) =>
                      //     input.trim().isEmpty ? "Please enter a title" : null,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Card(
                color: Color(0xff424250),
                shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                      hintText: "Enter description...",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 15,
                        fontFamily: "SFProText",
                        fontWeight: FontWeight.normal,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "SFProText",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

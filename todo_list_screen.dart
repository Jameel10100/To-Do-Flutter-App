import 'package:flutter/material.dart';
import 'package:first_app/screens/add_task_screen.dart';
import 'package:intl/intl.dart';
import 'package:first_app/widgets.dart';
// import 'package:custom_check_box/custom_check_box.dart';

class TodoListScreen extends StatefulWidget {
  // const TodoListScreen({Key? key}) : super(key: key);
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  Widget _buildTask(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Card(
            color: Color(0xff424250),
            // shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            elevation: 0,
            child: ScrollConfiguration(
              behavior: NoGlowBehaviour(),
              child: ListTile(
                title: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    "Task Title",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "SFProText",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Text(
                    "Lorem ipsum dolor sit\nLine2",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontFamily: "SFProText",
                      fontSize: 15,
                    ),
                  ),
                ),
                trailing: SizedBox(
                  // height: MediaQuery.of(context).size.height,
                  height: 15,
                  width: 25,
                  child: Checkbox(
                    onChanged: (value) {
                      print(value);
                    },
                    activeColor: Color(0xff65FFA7),
                    checkColor: Color(0xff32323D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    value: true,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    // DateTime date = new DateTime(now.year, now.month, now.day);
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff33333D),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: Color(0xffFA4A8D),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddTaskScreen()),
        ),
        child: Icon(
          Icons.add,
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 60),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "My Tasks",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Aeonik",
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text(
                      DateFormat.MMMMEEEEd().format(now),
                      style: TextStyle(
                        color: Color(0xffFA4A8D),
                        fontFamily: "Aeonik",
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return _buildTask(index);
        },
      ),
    );
  }
}

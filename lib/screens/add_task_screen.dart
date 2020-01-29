import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTitle;

    return Container(
      padding: const EdgeInsets.only(
          top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 5.0,
                ),
              ),
            ),
            onChanged: (value) {
              newTitle = value;
            },
          ),
          SizedBox(
            height: 30.0,
          ),
          Material(
            child: MaterialButton(
              elevation: 0,
              color: Colors.lightBlueAccent,
              height: 50.0,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              onPressed: () {
                addTaskCallback(newTitle);
              },
            ),
          ),
        ],
      ),
    );
  }
}

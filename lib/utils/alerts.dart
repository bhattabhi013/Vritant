import 'package:flutter/material.dart';

class AlertClass extends StatelessWidget {
  AlertClass(
      {Key? key,
      required this.title,
      required,
      this.message,
      this.onJoin,
      required this.alertNum})
      : super(key: key);

  final String title;
  final String? message;
  final Function? onJoin;
  final int alertNum;
  final TextEditingController _textFieldController = TextEditingController();
  _joinMeetAlert(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('TextField in Dialog'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: "Text Field in Dialog"),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text('OK'),
              onPressed: () {
                print(_textFieldController.text);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  _buildokAlert(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message!),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (alertNum) {
      case 1:
        return _buildokAlert(context);
      case 2:
        return _joinMeetAlert(context);
      default:
        return _buildokAlert(context);
    }
  }
}

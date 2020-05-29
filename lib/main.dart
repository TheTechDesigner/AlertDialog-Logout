import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'AlertDialog';
  bool tappedYes = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            final action = await AlertDialogs.yesCancelDialog(context, 'Logout', 'are you sure ?');
            if(action == DialogsAction.yes) {
              setState(() => tappedYes = true);
            } else {
              setState(() => tappedYes = false);
            }
          },
          padding: EdgeInsets.all(12.0),
          color: Color(0xFFC41A3B),
          child: Text(
            'Logout'.toUpperCase(),
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

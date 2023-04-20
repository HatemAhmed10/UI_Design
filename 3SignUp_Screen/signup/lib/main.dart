import 'package:flutter/material.dart';
import 'package:signup/presentation/screens/5Add_Users/Add_User_Home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddUserTasksScreen(),
    );
  }
}

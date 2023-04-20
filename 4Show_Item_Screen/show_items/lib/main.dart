import 'package:flutter/material.dart';
import 'package:show_items/presentation/screens/3Choose_Type_Screen/Change_Type_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeTypeScreen(),
    );
  }
}

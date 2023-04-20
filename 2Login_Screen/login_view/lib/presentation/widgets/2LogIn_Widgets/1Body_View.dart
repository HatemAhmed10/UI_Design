import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/2LogIn/Login_Cubit.dart';
import '../../../business_logic/2LogIn/Login_State.dart';
import '../../../shared/styles/colors.dart';
import '2Body_Text.dart';
import '3Body_TextForm.dart';
import '4Body_Image.dart';

class LogIn_Body extends StatelessWidget {
  LogIn_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Body_Image_View(),
              const Body_Text_View(),
              const SizedBox(
                height: 30.0,
              ),
              Body_TextForm_View(),
            ],
          ),
        ),
      ),
    );
  }
}

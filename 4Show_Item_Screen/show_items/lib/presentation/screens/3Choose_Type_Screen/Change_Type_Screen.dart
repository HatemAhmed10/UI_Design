import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/3Choose_Type/Choose_Type_Cubit.dart';
import '../../../business_logic/3Choose_Type/Choose_Type_State.dart';
import '../../../shared/components/1Tooles/5Custom_Navigate.dart';
import '../../widgets/3Change_Type_Widgets/1Body_Type.dart';

class ChangeTypeScreen extends StatelessWidget {
  const ChangeTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Choose_Type_Cubit(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            '@eldaheeh',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: FadeInRight(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Body_Type_Widgets(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/3Choose_Type/Choose_Type_Cubit.dart';
import '../../../business_logic/3Choose_Type/Choose_Type_State.dart';

class Body_Container extends StatelessWidget {
  Body_Container({super.key, required this.type});
  dynamic type;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Choose_Type_Cubit, Choose_Type_States>(
      builder: (context, state) {
        Choose_Type_Cubit cubit = Choose_Type_Cubit.get(context);

        return Column(
          children: [
            Container(
              height: 320,
              margin: EdgeInsets.only(top: 10),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image(image: cubit.Type_Images[cubit.current]),
              //   child: Image.network(movie['image'],
              //       fit: BoxFit.cover),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              type['title'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              type['description'],
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),
          ],
        );
      },
    );
  }
}

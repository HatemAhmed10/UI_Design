import 'package:flutter/material.dart';

class Body_Text_View extends StatelessWidget {
  const Body_Text_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'تسجيل دخول',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                // color: ColorManager.defaultBlack,
                fontSize: 30,
              ),
        ),
        Text(
          'ادخل الان لحل المزيد من الامتحانات',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              // color: Colors.grey,
              ),
        ),
      ],
    );
  }
}

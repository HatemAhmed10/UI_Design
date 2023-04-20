import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '../../../../shared/components/1Tooles/5Custom_Navigate.dart';
import '../../../../shared/components/constants.dart';
import '../../../data/models/1Type/4Choose-Subject/SubjectModel.dart';

class Body_ListView extends StatelessWidget {
  Body_ListView({required this.subjectModel, required this.Next});

  List<SubjectModel> subjectModel;
  final String Next;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: VerticalCardPager(
      textStyle: TextStyle(color: Colors.red),
      images: [
        for (int x = 0; x < subjectModel.length; x++)
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image(
              image: KImage[subjectModel[x].color!],
            ),
          ),
      ],
      titles: [
        for (int x = 0; x < subjectModel.length; x++) "${subjectModel[x].title}"
      ],
      onPageChanged: (page) {},
      onSelectedItem: (index) {
        // switch (Next) {
        //   case "Learn":
        //     navigateTo(
        //       context,
        //       Learn_Home_Screen(
        //         subject: subjectModel[index],
        //       ),
        //     );
        //     break;
        //   case "Quiz":
        //     navigateTo(
        //         context,
        //         Quiz_Home_Screen(
        //           subject: subjectModel[index],
        //         ));
        //     break;
        // }
      },
    ));
  }
}

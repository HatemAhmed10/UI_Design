import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/3Choose_Type/Choose_Type_Cubit.dart';
import '../../../business_logic/3Choose_Type/Choose_Type_State.dart';
import '../../../shared/components/1Tooles/5Custom_Navigate.dart';
import '../../screens/4Choose_Subject/Choose_Subject.dart';
import '2Body_Container.dart';

class Body_Type_Widgets extends StatelessWidget {
  Body_Type_Widgets({super.key});
  CarouselController carouselController = new CarouselController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Choose_Type_Cubit, Choose_Type_States>(
      builder: (context, state) {
        Choose_Type_Cubit cubit = Choose_Type_Cubit.get(context);

        return CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
                height: 400.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.70,
                enlargeCenterPage: true,
                pageSnapping: true,
                onPageChanged: (index, reason) {
                  cubit.changeCardIndex(index);
                }),
            items: cubit.Type_Content.map((type) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      switch (cubit.current) {
                        case 0:
                          navigateTo(
                              context,
                              Choose_Subject(
                                Next: "Learn",
                              ));
                          break;
                        case 1:
                          navigateTo(
                              context,
                              Choose_Subject(
                                Next: "Learn",
                              ));
                          break;
                        case 2:
                          navigateTo(
                              context,
                              Choose_Subject(
                                Next: "Quiz",
                              ));
                          break;
                      }
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                              color: Colors.red.withOpacity(0.2), width: 1),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.red.withOpacity(0.2),
                                blurRadius: 20,
                                offset: Offset(0, 5))
                          ]),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Body_Container(type: type),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList());
      },
    );
  }
}

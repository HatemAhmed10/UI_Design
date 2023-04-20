import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/styles/assets_manager.dart';
import 'Choose_Type_State.dart';

class Choose_Type_Cubit extends Cubit<Choose_Type_States> {
  Choose_Type_Cubit() : super(ChooseTypeInitialState());

  static Choose_Type_Cubit get(context) => BlocProvider.of(context);

  int current = 0;

  List<AssetImage> Type_Images = [
    const AssetImage(ImageAssets.news),
    const AssetImage(ImageAssets.learning),
    const AssetImage(ImageAssets.test),
  ];
  final List<dynamic> Type_Content = [
    {
      'title': 'News ',
      'description': 'More News ',
    },
    {
      'title': 'Learn ',
      'description': 'More Leasons And video',
    },
    {
      'title': 'Quiz ',
      'description': 'To find Quiz and Solve it',
    },
  ];

  void changeCardIndex(int index) {
    current = index;
    emit(AppChooseTypeState());
  }
}

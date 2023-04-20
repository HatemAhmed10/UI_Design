import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:show_items/data/Data.dart';

import '../../../shared/components/constants.dart';
import '../../data/models/1Type/4Choose-Subject/SubjectModel.dart';
import 'Choose_Sub_State.dart';

class Choose_Subj_Cubit extends Cubit<Choose_Subj_States> {
  Choose_Subj_Cubit() : super(ChooseSubjInitialState());

  static Choose_Subj_Cubit get(context) => BlocProvider.of(context);

  List<SubjectModel> subject = [
    // SubjectModel(title: "aas", subTitle: "sa", color: 1)
  ];

  fetchAllSubjects() {
    emit(SubjectsLoadingSuccess());
    subject.clear();
    // FirebaseFirestore.instance
    //     .collection('Subject')
    //     .snapshots()
    //     .listen((event) {
    //   subject.clear();

    //   event.docs.forEach((element) {
    //     subject.add(SubjectModel.fromJson(element.data()));
    //   });
    //   emit(SubjectsSuccess());
    // });

    subject = Subjects;
    emit(SubjectsSuccess());
  }
}

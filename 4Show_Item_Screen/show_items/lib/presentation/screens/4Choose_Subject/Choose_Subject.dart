import 'package:animate_do/animate_do.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import '../../../../data/models/1Type/4Choose-Subject/SubjectModel.dart';
import '../../../../shared/components/1Tooles/3CustomFormField.dart';
import '../../../../shared/components/1Tooles/5Custom_Navigate.dart';
import '../../../../shared/components/constants.dart';
import '../../../business_logic/4Choose_Subject/Choose_Sub_Cubit.dart';
import '../../../business_logic/4Choose_Subject/Choose_Sub_State.dart';
import '../../widgets/4Choose_Subject_Widget/1Body_ListView.dart';

class Choose_Subject extends StatelessWidget {
  const Choose_Subject({
    super.key,
    required this.Next,
  });

  final String Next;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Choose_Subj_Cubit()..fetchAllSubjects(),
      child: BlocBuilder<Choose_Subj_Cubit, Choose_Subj_States>(
        builder: (context, state) {
          Choose_Subj_Cubit cubit = Choose_Subj_Cubit.get(context);

          return Scaffold(
            appBar: AppBar(
              title: Text("Subject"),
            ),
            body: ConditionalBuilder(
              condition: state is! SubjectsLoadingSuccess,
              builder: (context) => SafeArea(
                child: FadeInUp(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Body_ListView(Next: Next, subjectModel: cubit.subject),
                      ],
                    ),
                  ),
                ),
              ),
              fallback: (context) => Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }
}

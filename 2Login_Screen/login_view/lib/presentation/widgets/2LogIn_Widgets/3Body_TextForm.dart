import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/2LogIn/Login_Cubit.dart';
import '../../../business_logic/2LogIn/Login_State.dart';
import '../../../shared/components/1Tooles/5Custom_Navigate.dart';
import '../../../shared/styles/colors.dart';
import '../../screens/Home_Screen.dart';

class Body_TextForm_View extends StatelessWidget {
  Body_TextForm_View({super.key});
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SocialLoginCubit(),
      child: BlocConsumer<SocialLoginCubit, SocialLoginStates>(
        listener: (context, state) {
          if (state is SocialLoginErrorState) {
            // showToast(
            //   text: state.error,
            //   state: ToastStates.ERROR,
            // );
          }
          if (state is SocialLoginSuccessState) {
            // print("Email" + state.email.toString());
            // CacheHelper.saveData(
            //   key: 'email',
            //   value: state.email,
            // ).then((value) {
            //   navigateAndFinish(
            //     context,
            //     ChangeTypeScreen(),
            //   );
            // });
          }
        },
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(fontSize: 15),
                  cursorColor: ColorManager.defaultRedColor2,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your email address';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.red,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 15),
                  cursorColor: ColorManager.defaultRedColor2,
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your Password ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: ColorManager.defaultRedColor2,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        SocialLoginCubit.get(context)
                            .changePasswordVisibility();
                      },
                      icon: Icon(
                        SocialLoginCubit.get(context).suffix,
                      ),
                      color: ColorManager.defaultRedColor2,
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  obscureText: SocialLoginCubit.get(context).isPassword,
                  onFieldSubmitted: (value) {
                    if (formKey.currentState!.validate()) {
                      SocialLoginCubit.get(context).userLogin(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: 110,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                        color: ColorManager.defaultRedColor2,
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            // SocialLoginCubit.get(context).userLogin(
                            //   email: emailController.text,
                            //   password: passwordController.text,
                            // );
                            navigateTo(context, Home_Screnn());
                          }
                        },
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),

                // ConditionalBuilder(
                //   condition: state is! SocialLoginLoadingState,
                //   builder: (context) => Center(
                //     child: Padding(
                //       padding: const EdgeInsets.only(top: 30),
                //       child: Container(
                //         width: 110,
                //         height: 50,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(
                //             20.0,
                //           ),
                //           color: ColorManager.defaultRedColor2,
                //         ),
                //         child: MaterialButton(
                //           onPressed: () {
                //             if (formKey.currentState!.validate()) {
                //               SocialLoginCubit.get(context).userLogin(
                //                 email: emailController.text,
                //                 password: passwordController.text,
                //               );
                //               // navigateTo(
                //               //     context,
                //               //     HomeExam_Screen(
                //               //       UserEmail: "Saad10@gmail.com",
                //               //     ));
                //             }
                //           },
                //           child: Text(
                //             'تسجيل الدخول',
                //             style: TextStyle(fontSize: 13, color: Colors.white),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),

                //   fallback: (context) => Center(
                //       child: CircularProgressIndicator(
                //     color: ColorManager.defaultRedColor2,
                //   )),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}

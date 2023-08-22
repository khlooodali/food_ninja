import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';
import 'package:food_ninja/features/loginandsignup/cubit/apiclient.dart';
import 'package:food_ninja/features/loginandsignup/cubit/login_state.dart';

import '../../../core/design/custombutton/view.dart';
import '../../../core/design/customtextfiled/view.dart';
import '../../loginandsignup/model.dart';

class SignProcessFormView extends StatefulWidget {
  const SignProcessFormView({
    super.key,
    required this.user,
  });
  final User user;
  @override
  State<SignProcessFormView> createState() => _SignProcessFormViewState();
}

class _SignProcessFormViewState extends State<SignProcessFormView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: BlocProvider(
        create: (context) => ApiClientCubit(),
        child: Builder(builder: (context) {
          ApiClientCubit cubit = BlocProvider.of(context);
          return Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFiledView(
                  controller: cubit.userfirstName,
                  label: 'First Name',
                  space: 20,
                  type: TextInputType.name,
                  ispassword: false,
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your First Name';
                    }
                    return null;
                  },
                ),
                CustomTextFiledView(
                  controller: cubit.userlastName,
                  label: 'Last Name',
                  space: 20,
                  type: TextInputType.name,
                  ispassword: false,
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Last Name';
                    }
                    return null;
                  },
                ),
                CustomTextFiledView(
                  controller: cubit.userphone,
                  label: 'Mobile Number',
                  space: 200,
                  type: TextInputType.phone,
                  ispassword: false,
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Mobile Number';
                    }
                    return null;
                  },
                ),
                Center(
                    child: BlocBuilder<ApiClientCubit, ApiClientStates>(
                        builder: (context, state) => state is LoadingState
                            ? const CircularProgressIndicator(
                                color: AppLightColor.lightprimaryColor,
                              )
                            : CusttomButton(
                                ontapped: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    cubit.signUp(context);
                                  }
                                },
                                text: 'Next')))
              ],
            ),
          );
        }),
      ),
    );
  }
}

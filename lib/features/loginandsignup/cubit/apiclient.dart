import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../core/logic/helpermethode/nextpage.dart';
import '../../mainpage/view.dart';
import '../../uploadphoto/view.dart';
import 'login_state.dart';

class ApiClientCubit extends Cubit<ApiClientStates> {
  ApiClientCubit() : super(ApiClientStates());

  final TextEditingController passController = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController useremailController = TextEditingController();

  final TextEditingController userpasswordController = TextEditingController();
  final TextEditingController userfirstName = TextEditingController();

  final TextEditingController userlastName = TextEditingController();

  final TextEditingController userphone = TextEditingController();

  Future signIn(context) async {
    var dio = Dio();
    emit(LoadingState());
    try {
      var response = await dio.post(
        'https://project1.amit-learning.com/api/auth/login',
        data: {"email": emailController.text, "password": passController.text},
      );
      emit(SuccessState());
      if (response.data["status"] == true) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MainPageView(
            accesstoken: response.data["token"],
          );
        }));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
            content: Text(response.data["massage"])));
      }

      print(response.data);

      return response;
    } catch (e) {
      print(e);
      emit(FailState());
      const SnackBar(
          duration: Duration(seconds: 3), content: Text('failde connection'));
    }
  }

  Future signUp(context) async {
    var dio = Dio();
    emit(LoadingState());
    try {
      var response = await dio.post(
          'https://project1.amit-learning.com/api/auth/register/user',
          data: {
            "name": usernameController.text,
            "email": useremailController.text,
            "password": userpasswordController.text,
            "mobile": userphone.text
          });
      emit(SuccessState());

      if (response.data["status"] == true) {
        print(response.data);
        nextTo(
            context,
            UploaPhotoView(
              accesstoken: response.data["token"],
            ),
            iskeep: false);
      } else {
        final error = ErrorResponse.fromJson(response.data);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
            content: Text(error.massege.email[0])));
      }

      return response;
    } catch (e) {
      print(e);
      emit(FailState());
      const SnackBar(
          duration: Duration(seconds: 3), content: Text('failde connection'));
    }
  }
}

class ErrorResponse {
  late final bool status;
  late final Massege massege;

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    massege = Massege.fromJson(json['massege']);
  }
}

class Massege {
  late final List<String> email;

  Massege.fromJson(Map<String, dynamic> json) {
    email = List.castFrom<dynamic, String>(json['email']);
  }
}

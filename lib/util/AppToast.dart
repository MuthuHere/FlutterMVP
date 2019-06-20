import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

// ignore: missing_return
Widget toast(String message){
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
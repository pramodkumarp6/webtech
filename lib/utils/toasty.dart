import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasty {
  static toastMessage(String message) {
    Fluttertoast.showToast(msg: message);
  }
}

import 'package:fluttertoast/fluttertoast.dart';
import 'package:status_saver/common.dart';

void showMessageWithoutUiBlock(
    {String Function()? getMessage,
    String? message,
    Toast toastLength = Toast.LENGTH_SHORT}) {
  if (message == null && getMessage == null) {
    throw ArgumentError('Either message or getMessage is required.');
  }
  Fluttertoast.showToast(
      msg: message ?? (getMessage != null ? getMessage() : ""),
      toastLength: toastLength,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.greenAccent.shade200,
      textColor: Colors.black,
      fontSize: 16.0);
}

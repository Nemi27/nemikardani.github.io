import 'package:fluttertoast/fluttertoast.dart';

class CommonWidgets{

 Future<bool?> showCoumingSoonToast({String? text}){
   return  Fluttertoast.showToast(msg:text?? 'Comingg Soon...',timeInSecForIosWeb: 1,gravity: ToastGravity.SNACKBAR);
  }
}